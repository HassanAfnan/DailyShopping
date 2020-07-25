using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;

namespace DailyShopping.Models
{
    public class Connection
    {
        public SqlConnection con = new SqlConnection();

        public SqlConnection getConnection()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["DailyShopping"].ToString());
            con.Open();
            return con;
        }

        // for stored procedure
        public void ExecuteSP(string StoredProcedure, SqlParameter[] sqlParameters)
        {
            getConnection();
            SqlCommand cmd = new SqlCommand(StoredProcedure, con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            for (int i = 0; i < sqlParameters.Length; i++)
            {
                cmd.Parameters.Add(sqlParameters[i]);
            }
            cmd.ExecuteNonQuery();
            con.Close();
        }

        // for inline query
        public void ExecuteQuery(string query)
        {
            getConnection();
            SqlCommand com = new SqlCommand(query, con);
            com.ExecuteNonQuery();
        }
    }
}