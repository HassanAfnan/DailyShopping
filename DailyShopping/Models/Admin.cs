using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DailyShopping.Models
{
    public class Admin
    {
        public string Aid { get; set; }

        public string Name { get; set; }

        public string email { get; set; }

        public string password { get; set; }

        public string role = "Admin";

        public void signUp(Admin a)
        {
            Connection gcon = new Connection();
            SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter(){ ParameterName = "@name", Value = a.Name },
                    new SqlParameter(){ ParameterName = "@email", Value = a.email},
                    new SqlParameter(){ ParameterName = "@pass", Value = a.password},
                    new SqlParameter(){ ParameterName = "@role", Value = a.role},
                };
            gcon.ExecuteSP("AdminSignUpProcedure", parameters);
        }
        public string GetAdminName(string email)
        {
            Models.Connection con = new Models.Connection();
            string query = "SELECT name from Admin where email = '" + email + "' ";
            SqlCommand com = new SqlCommand(query, con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            string AdminName = "";
            while (rd.Read())
            {
                AdminName = rd["name"].ToString();
            }
            return AdminName;
        }
    }
}