﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UrbanDrive.View.Admin
{
    public partial class Cars : System.Web.UI.Page
    {
        Models.Functions Conn;
            
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCars();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }

        private void ShowCars()
        {
            string Query = "select * from CarTbl";
            CarList.DataSource = Conn.GetData(Query);
            CarList.DataBind();

        }


        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (LNumberTb.Value == "" || BrandTb.Value == "" || ModelTb.Value == "" || PriceTb.Value == "" || ColorTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string PlateNum = LNumberTb.Value;
                    string Brand = BrandTb.Value;
                    string Model = ModelTb.Value;
                    int Price = Convert.ToInt32(PriceTb.Value.ToString());
                    string Color = ColorTb.Value;
                    string Status = Availabledd.SelectedValue;

                    string Qurey = "update CarTbl set Brand ='{0}', Model = '{1}', Price = {2}, Color = '{3}', Status = '{4}'  where CPlateNum  = '{5}'";
                    Qurey = String.Format(Qurey, Brand, Model, Price, Color, Status , PlateNum);
                    Conn.SetData(Qurey);

                    ErrorMsg.InnerText = "Car Edited";
                    ShowCars();
                }
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
                if(LNumberTb.Value == "" || BrandTb.Value =="" || ModelTb.Value == "" || PriceTb.Value == "" || ColorTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string PlateNUm = LNumberTb.Value;
                    string Brand = BrandTb.Value;
                    string Model = ModelTb.Value;
                    int Price = Convert.ToInt32(PriceTb.Value.ToString());
                    string Color = ColorTb.Value;
                    string Status = Availabledd.SelectedValue;

                    string Qurey = "insert into CarTbl values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Qurey = String.Format(Qurey, PlateNUm, Brand, Model , Price, Color, Status);
                    Conn.SetData(Qurey);
                    ShowCars();
                    ErrorMsg.InnerText = "Car Aadded";
                   
                }
            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }
        }

        
        protected void CarList_SelectedIndexChanged(object sender, EventArgs e)
        {
            LNumberTb.Value = CarList.SelectedRow.Cells[1].Text;
            BrandTb.Value = CarList.SelectedRow.Cells[2].Text;
            ModelTb.Value = CarList.SelectedRow.Cells[3].Text;
            PriceTb.Value = CarList.SelectedRow.Cells[4].Text;
            ColorTb.Value = CarList.SelectedRow.Cells[5].Text;
            Availabledd.SelectedValue = CarList.SelectedRow.Cells[6].Text;
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (LNumberTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string PlateNUm = LNumberTb.Value;
                   
               

                    string Qurey = "delete from CarTbl where CplateNum='{0}'";
                    Qurey = String.Format(Qurey, PlateNUm);
                    Conn.SetData(Qurey);
                    ShowCars();
                    ErrorMsg.InnerText = "Car Deleted";

                }
            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }
        }
    }
}