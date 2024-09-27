using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UrbanDrive.View.Customer
{
    public partial class Cars : System.Web.UI.Page
    {
        // Customer Module
        Models.Functions Conn;

        // Declare the variables at the class level
        private string LNumber;
        private string RentDate;
        private string RetDate;
        private int DPrice;

        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            if (!IsPostBack) // Only show cars when the page is first loaded
            {
                ShowCars();
                CustName.InnerText = Login.CName;
            }
        }

        public override void VerifyRenderingInServerForm(Control control) { }

        private void ShowCars()
        {
            string query = "SELECT * FROM CarTbl WHERE Status = 'Available'";
            CarList.DataSource = Conn.GetData(query);
            CarList.DataBind();
        }

        protected void CarList_SelectedIndexChanged1(object sender, EventArgs e)
        {
            LNumber = CarList.SelectedRow.Cells[1].Text;
            RentDate = DateTime.Today.ToString("yyyy-MM-dd");

            if (DateTime.TryParse(ReturnDateTb.Value, out DateTime retDate))
            {
                RetDate = retDate.ToString("yyyy-MM-dd");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "InvalidDate", "alert('Invalid return date format.');", true);
                return;
            }

            DPrice = Convert.ToInt32(CarList.SelectedRow.Cells[4].Text);
        }



        private void UpdateCar()
        {
            try
            {
                string Status = "Booked";
                string Qurey = "update CarTbl set Status ='{0}' where CplateNum = '{1}'";
                Qurey = String.Format(Qurey, Status, CarList.SelectedRow.Cells[1].Text);
                Conn.SetData(Qurey);
            }
            catch (Exception ex)
            {
                InfoMsg.InnerText = ex.Message;
            }
        }


        protected void BookBtn_Click(object sender, EventArgs e)
        {
            TimeSpan DDays = Convert.ToDateTime(ReturnDateTb.Value) - DateTime.Today.Date;
            int days = DDays.Days;

            int DPrice = Convert.ToInt32(CarList.SelectedRow.Cells[4].Text);
            int fees = DPrice * days;

            try
            {
                if (string.IsNullOrEmpty(CarList.SelectedRow.Cells[1].Text))
                {
                    InfoMsg.InnerText = "Missing Information: Please select a car.";
                    return;
                }

                string customerName = Login.CName;
                string customerIdQuery = $"SELECT CustId FROM CustomerTbl WHERE CusrName = '{customerName}'";
                var customerIdData = Conn.GetData(customerIdQuery);

                if (customerIdData.Rows.Count == 0)
                {
                    InfoMsg.InnerText = "Error: Customer not found.";
                    return;
                }

                int customerId = Convert.ToInt32(customerIdData.Rows[0]["CustId"]);

                string query = $"INSERT INTO RentTbl (Car, Customer, RentDate, ReturnDate, Fees) " +
                               $"VALUES ('{CarList.SelectedRow.Cells[1].Text}', {customerId}, '{DateTime.Today:yyyy-MM-dd}', '{Convert.ToDateTime(ReturnDateTb.Value):yyyy-MM-dd}', {fees})";

                int result = Conn.SetData(query);
                UpdateCar();

                if (result > 0)
                {
                    ShowCars();
                    InfoMsg.InnerText = "Car rented successfully.";
                }
                else
                {
                    InfoMsg.InnerText = "Error: Unable to rent the car.";
                }
            }
            catch (Exception ex)
            {
                InfoMsg.InnerText = "Error: " + ex.Message;
            }
        }
    }
}
