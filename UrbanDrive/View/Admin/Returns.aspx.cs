using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UrbanDrive.View.Admin
{
    public partial class Returns : System.Web.UI.Page
    {
        Models.Functions Conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            if (!IsPostBack) // Ensure data is loaded only on the first load
            {
                ShowReturn();
            }
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            // Required for GridView to function properly
        }

        private void ShowReturn()
        {
            string query = "SELECT * FROM ReturnTbl";
            RentList.DataSource = Conn.GetData(query);
            RentList.DataBind();
        }

        protected void RentList_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the RentId from the selected row
            int returnID = Convert.ToInt32(RentList.SelectedRow.Cells[1].Text); // Assuming the RentId is in the second cell (index 1)
            ViewState["SelectedRentId"] = returnID; // Store in ViewState
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            // Retrieve RentId from ViewState
            if (ViewState["SelectedRentId"] != null)
            {
                int returnID = (int)ViewState["SelectedRentId"]; // Get the selected RentId

                DeleteCar(returnID);
                ShowReturn(); // Refresh the GridView after deletion
                InfoMsg.InnerText = "Record deleted successfully.";
            }
            else
            {
                InfoMsg.InnerText = "Please select a record to delete.";
            }
        }

        private void DeleteCar(int rentId)
        {
            string query = "DELETE FROM ReturnTbl WHERE RentId = @RentId";

            // Use parameterized query for security
            using (SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; AttachDbFilename='E:\WADProjecct\git hub(folder)wad project\UrbanDrive\App_Data\CarRenatlDbASP.mdf'; Integrated Security=True"))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@RentId", rentId);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}
