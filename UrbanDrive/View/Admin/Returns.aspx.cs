using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UrbanDrive.View.Admin
{
    public partial class Returns : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowReturn();
        }

        Models.Functions Conn;
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        // Method to display pending rentals from RentTbl
        private void ShowReturn()
        {

            string query = "SELECT * FROM ReturnTbl";
            RentList.DataSource = Conn.GetData(query);
            RentList.DataBind();


        }

    }
}