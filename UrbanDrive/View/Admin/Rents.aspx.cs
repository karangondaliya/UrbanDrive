using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UrbanDrive.View.Admin
{
    public partial class Rents : System.Web.UI.Page
    {

        Models.Functions Conn;
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        // Method to display pending rentals from RentTbl
        private void ShowRents()
        {

            string query = "SELECT * FROM RentTbl";
            RentList.DataSource = Conn.GetData(query);
            RentList.DataBind();


        }


        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowRents();
        }

        private void ReturnCar()
        {
            try
            {
               
                   



                    string Qurey = "delete from RentTbl where RentId={0}";
                    Qurey = String.Format(Qurey, RentList.SelectedRow.Cells[1].Text);
                    Conn.SetData(Qurey);
                  
                 

                
            }
            catch (Exception Ex)
            {
                InfoMsg.InnerText = Ex.Message;
            }

        }


        string LicensePlate;
        protected void RentList_SelectedIndexChanged(object sender, EventArgs e)
        {
            LicensePlate = RentList.SelectedRow.Cells[2].Text; // Get license plate number from the second cell (adjust column index as needed)
        }


        private void UpdateCar()
        {
            try
            {
                string Status = "Available";
                string Qurey = "update CarTbl set Status ='{0}' where CplateNum = '{1}'";
                Qurey = String.Format(Qurey, Status,  RentList.SelectedRow.Cells[2].Text);
                Conn.SetData(Qurey);
            }
            catch (Exception ex)
            {
                InfoMsg.InnerText = ex.Message;
            }
        }




        protected void SaveBtn_Click1(object sender, EventArgs e)
        {
            try
            {
                // Ensure that a row is selected and the necessary fields are not empty
                if (RentList.SelectedRow == null || string.IsNullOrEmpty(RentList.SelectedRow.Cells[2].Text))
                {
                    InfoMsg.InnerText = "Select a Rent";
                    return;
                }

                // Get the values from the selected row in GridView
                string carPlate = RentList.SelectedRow.Cells[2].Text;  // Assuming Car Plate is in column 2
                string customerId = RentList.SelectedRow.Cells[3].Text;  // Assuming Customer ID is in column 3

                // Ensure Delay and Fine are valid integers
                int delay = int.TryParse(DelayTb.Value, out delay) ? delay : 0;  // Parse Delay
                int fine = int.TryParse(FineTb.Value, out fine) ? fine : 0;  // Parse Fine

                // Insert into ReturnTbl with properly formatted values
                string query = "INSERT INTO ReturnTbl (Car, Customer, Date, Delay, Fine) VALUES ('{0}', {1}, '{2}', {3}, {4})";
                query = string.Format(query, carPlate, customerId, System.DateTime.Today.ToString("yyyy-MM-dd"), delay, fine);
                Conn.SetData(query);

                // Update the Car status and remove the Rent record
                UpdateCar();
                ReturnCar();

                // Refresh the GridView
                ShowRents();
                InfoMsg.InnerText = "Car Returned Successfully!";
            }
            catch (Exception ex)
            {
                // Display the error message
                InfoMsg.InnerText = "Error: " + ex.Message;
            }
        }

    }
}