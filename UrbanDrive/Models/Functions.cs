using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace UrbanDrive.Models
{
    public class Functions
    {
        private SqlConnection Conn;
        private SqlCommand cmd;
        private DataTable dt;
        private string ConnStr;
        private SqlDataAdapter sda;


        public Functions() 
        {

            ConnStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\WADProjecct\UrbanDrive-master\UrbanDrive\App_Data\CarRenatlDbASP.mdf;Integrated Security=True";
            Conn = new SqlConnection(ConnStr);
            cmd = new SqlCommand();
            cmd.Connection = Conn;
           
        }


        public DataTable GetData(String Query)
        {

           dt = new DataTable();
           sda = new SqlDataAdapter(Query, ConnStr);
           sda.Fill(dt);
           
            return dt;

        }


        public int SetData(string Query)
        {
            int rcnt = 0;
            if(Conn.State == ConnectionState.Closed)
            {
                Conn.Open();
            }

            cmd.CommandText = Query;
            rcnt = cmd.ExecuteNonQuery();
            Conn.Close();
            return rcnt;
        }





    }
}