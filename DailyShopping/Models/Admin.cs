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

        public void signUp(Users a)
        {
            Connection gcon = new Connection();
            SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter(){ ParameterName = "@name", Value = a.firstName },
                    new SqlParameter(){ ParameterName = "@email", Value = a.email},
                    new SqlParameter(){ ParameterName = "@pass", Value = a.password},
                    new SqlParameter(){ ParameterName = "@role", Value = a.address},
                };
            gcon.ExecuteSP("AdminSignUpProcedure", parameters);
        }

    }
}