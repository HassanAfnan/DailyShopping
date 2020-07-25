using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DailyShopping.Models
{
    public class Login
    {
        public string email { get; set; }

        public string password { get; set; }

        public string role { get; set; }

        public bool cond = false;

        public Connection connection = new Connection();

        public void GetLogin(Login lo)
        {
            connection.getConnection();
            SqlCommand cmd = new SqlCommand("LoginProcedure", connection.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@em",lo.email);
            cmd.Parameters.AddWithValue("@pa",lo.password);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                string Email = rd["email"].ToString();
                string Password = rd["password"].ToString();
                if (Email == lo.email && Password == lo.password)
                {
                    cond = true;
                    lo.role = rd["role"].ToString();
                }
            }
        }
    }
}