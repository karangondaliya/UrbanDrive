using System;
using System.Data;
using System.Web.UI;

namespace UrbanDrive.View.Customer
{
    public partial class PandingRentals : System.Web.UI.Page
    {
        private Models.Functions Conn;

        // Load the page and display pending rentals for the logged-in customer
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            if (!IsPostBack) // Load data only on the first page load
            {
                ShowPendingRentals();
            }
        }

        public override void VerifyRenderingInServerForm(Control control) { }

        private void ShowPendingRentals()
        {
            try
            {
                // Retrieve the customer ID based on the logged-in customer's name
                string customerName = Login.CName;
                string customerIdQuery = $"SELECT CustId FROM CustomerTbl WHERE CusrName = '{customerName}'";

                DataTable customerIdTable = Conn.GetData(customerIdQuery);

                if (customerIdTable.Rows.Count > 0)
                {
                    int customerId = Convert.ToInt32(customerIdTable.Rows[0]["CustId"]);

                    // Query to retrieve pending rentals for the customer
                    string query = $"SELECT * FROM RentTbl WHERE Customer = {customerId}"; // Use customerId in the query
                    DataTable rentalsTable = Conn.GetData(query);

                    if (rentalsTable.Rows.Count > 0)
                    {
                        CarList.DataSource = rentalsTable;
                        CarList.DataBind();
                    }
                    else
                    {
                        ErrorMsg.Text = "No pending rentals found.";
                    }
                }
                else
                {
                    ErrorMsg.Text = "Error: Customer not found.";
                }
            }
            catch (Exception ex)
            {
                ErrorMsg.Text = $"Error: {ex.Message}";
            }
        }
    }
}
