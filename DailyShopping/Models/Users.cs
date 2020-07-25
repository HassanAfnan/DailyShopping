using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DailyShopping.Models
{
    public class Users
    {
        public string Uid { get; set; }

        public string firstName { get; set; }

        public string lastName { get; set; }

        public string email { get; set; }

        public string password { get; set; }

        public string address { get; set; }

        public string city { get; set; }

        public string state { get; set; }

        public string pin { get; set; }

        public string mobile { get; set; }

        public string role = "Users";

        public void signUp(Users a)
        {
            Connection gcon = new Connection();
            SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter(){ ParameterName = "@fname", Value = a.firstName },
                    new SqlParameter(){ ParameterName = "@lname", Value = a.lastName },
                    new SqlParameter(){ ParameterName = "@email", Value = a.email},
                    new SqlParameter(){ ParameterName = "@pass", Value = a.password},
                    new SqlParameter(){ ParameterName = "@address", Value = a.address},
                    new SqlParameter(){ ParameterName = "@city", Value = a.city},
                    new SqlParameter(){ ParameterName = "@state", Value = a.state},
                    new SqlParameter(){ ParameterName = "@pincode", Value = a.pin},
                    new SqlParameter(){ ParameterName = "@mobile", Value = a.mobile},
                    new SqlParameter(){ ParameterName = "@role", Value = a.role},
                };
            gcon.ExecuteSP("UserSignUpProcedure", parameters);
        }
    }
}
