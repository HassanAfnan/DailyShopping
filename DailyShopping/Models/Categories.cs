using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace DailyShopping.Models
{
    public class Categories : ICrud<Categories>
    {
        public string CatID { get; set; }

        public string CatName { get; set; }
        public void Add(Categories s)
        {
            Connection gcon = new Connection();
            SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter(){ ParameterName = "@CatName", Value = s.CatName },                    
                };
            gcon.ExecuteSP("InsertCategoryProcedure", parameters);
        }

        public void Delete(Categories s)
        {
            throw new NotImplementedException();
        }

        public List<Categories> GetIds()
        {
            Connection gcon = new Connection();
            List<Categories> listed = new List<Categories>();
            string query = "select CategoryName from Category";
            SqlCommand com = new SqlCommand(query, gcon.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                Categories s = new Categories();
                s.CatName = rd["CategoryName"].ToString();
                listed.Add(s);
            }
            rd.Close();
            return listed;
        }

        public StringReader Recipt(Categories a)
        {
            throw new NotImplementedException();
        }

        public Categories Search(Categories s)
        {
            throw new NotImplementedException();
        }

        public void Update(Categories s)
        {
            throw new NotImplementedException();
        }
    }
}