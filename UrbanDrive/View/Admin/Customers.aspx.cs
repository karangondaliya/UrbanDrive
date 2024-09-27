using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UrbanDrive.View.Admin
{
    public partial class Customers : System.Web.UI.Page
    {
        Models.Functions Conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            if (!IsPostBack)
            {
                ShowCustomers();
            }
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            // Required for exporting GridView to avoid rendering error
        }

        private void ShowCustomers()
        {
            string Query = "SELECT * FROM CustomerTbl";
            CustomerList.DataSource = Conn.GetData(Query);
            CustomerList.DataBind();
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(CustNameTb.Value) || string.IsNullOrEmpty(AddTb.Value) || string.IsNullOrEmpty(PhoneTb.Value) || string.IsNullOrEmpty(PassTb.Value))
                {
                    ErrorMsg.InnerText = "Missing Information";
                    return;
                }

                if (CustomerList.SelectedRow == null)
                {
                    ErrorMsg.InnerText = "Please select a customer to edit.";
                    return;
                }

                string CustId = CustomerList.SelectedRow.Cells[1].Text; // First column is ID
                string CustName = CustNameTb.Value;
                string CustAdd = AddTb.Value;
                string CustPhone = PhoneTb.Value;
                string CustPassword = PassTb.Value;

                string Query = "UPDATE CustomerTbl SET CusrName = '{0}', CustAdd = '{1}', CustPhone = '{2}', CustPassword = '{3}' WHERE CustId = {4}";
                Query = String.Format(Query, CustName, CustAdd, CustPhone, CustPassword, CustId);
                Conn.SetData(Query);

                ErrorMsg.InnerText = "Customer Updated Successfully";
                ShowCustomers();
            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(CustNameTb.Value) || string.IsNullOrEmpty(AddTb.Value) || string.IsNullOrEmpty(PhoneTb.Value) || string.IsNullOrEmpty(PassTb.Value))
                {
                    ErrorMsg.InnerText = "Missing Information";
                    return;
                }

                string CustName = CustNameTb.Value;
                string CustAdd = AddTb.Value;
                string CustPhone = PhoneTb.Value;
                string CustPassword = PassTb.Value;

                // Check if a customer with the same name already exists
                string checkQuery = "SELECT COUNT(*) FROM CustomerTbl WHERE CusrName = '{0}'";
                checkQuery = String.Format(checkQuery, CustName);
                DataTable dt = Conn.GetData(checkQuery);

                if (Convert.ToInt32(dt.Rows[0][0]) > 0)
                {
                    // Customer with the same name already exists
                    ErrorMsg.InnerText = "Customer with the same name already exists!";
                }
                else
                {
                    // No duplicate customer, proceed to insert
                    string Query = "INSERT INTO CustomerTbl (CusrName, CustAdd, CustPhone, CustPassword) VALUES('{0}', '{1}', '{2}', '{3}')";
                    Query = String.Format(Query, CustName, CustAdd, CustPhone, CustPassword);
                    Conn.SetData(Query);

                    ErrorMsg.InnerText = "Customer Added Successfully";
                    ShowCustomers();
                }
            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustomerList.SelectedRow == null)
                {
                    ErrorMsg.InnerText = "Please select a customer to delete.";
                    return;
                }

                string CustId = CustomerList.SelectedRow.Cells[1].Text; // Assuming first column is ID

                string Query = "DELETE FROM CustomerTbl WHERE CustId = {0}";
                Query = String.Format(Query, CustId);
                Conn.SetData(Query);

                ErrorMsg.InnerText = "Customer Deleted Successfully";
                ShowCustomers();
            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }
        }

        protected void CustomerList_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (CustomerList.SelectedRow != null)
                {
                    CustNameTb.Value = CustomerList.SelectedRow.Cells[2].Text; // Assuming second column is Name
                    AddTb.Value = CustomerList.SelectedRow.Cells[3].Text; // Assuming third column is Address
                    PhoneTb.Value = CustomerList.SelectedRow.Cells[4].Text; // Assuming fourth column is Phone
                    PassTb.Value = CustomerList.SelectedRow.Cells[5].Text; // Assuming fifth column is Password
                }
            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }
        }
    }
}
