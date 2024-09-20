using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UrbanDrive.View.Customer
{
	public partial class Cars : System.Web.UI.Page
	{
		//Customer Module
		Models.Functions Conn;
		protected void Page_Load(object sender, EventArgs e)
		{
			Conn = new Models.Functions();
			ShowCars();
			CustName.InnerText = Login.CName;
			Customer = Login.CustId;
		}
		public override void VerifyRenderingInServerForm(Control control)
		{

		}
		private void ShowCars()
		{
			string st = "Available";
			string Query = "select * from CarTbl where Status = '" + st + "' ";
			CarList.DataSource = Conn.GetData(Query);
			CarList.DataBind();

		}

		protected void BookBtn_Click(object sender, EventArgs e)
		{
			TimeSpan DDays = Convert.ToDateTime(ReturnDateTb.Value) - DateTime.Today.Date;
			int Days = DDays.Days;
			int DPrice = Convert.ToInt32(CarList.SelectedRow.Cells[4].Text);
			int Fees = DPrice * Days;
			int flag = 1;
			try
			{
				if (CarList.SelectedRow.Cells[1].Text == "")
				{
					InfoMsg.InnerText = "Missing Information";
				}
				else
				{
					string Qurey = "insert into RentTbl values('{0}',{1},'{2}','{3}',{4})";
					Qurey = String.Format(Qurey, CarList.SelectedRow.Cells[1].Text, Login.CustId, System.DateTime.Today.Date.ToString(), ReturnDateTb.Value, Fees);
					Conn.SetData(Qurey);
					ShowCars();
					InfoMsg.InnerText = "Car Rented";
				}
			}
			catch (Exception Ex)
			{
				InfoMsg.InnerText = Ex.Message;
			}
		}

		string LNumber, RentDate, RetDate;
		int Fees = 0, DPrice, Customer;
		protected void CarList_SelectedIndexChanged(object sender, EventArgs e)
		{''
			LNumber = CarList.SelectedRow.Cells[1].Text;
			//Customer = Convert.ToInt32(CarList.SelectedRow.Cells[2].Text);
			RentDate = System.DateTime.Today.Date.ToString();
			RetDate = ReturnDateTb.Value;
		 	DPrice = Convert.ToInt32(CarList.SelectedRow.Cells[4].Text);
		}
	}
}