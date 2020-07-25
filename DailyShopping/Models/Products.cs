using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace DailyShopping.Models
{
    public class Products:ICrud<Products>
    {
        public string pid { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public int price { get; set; }
        public int quantity { get; set; }
        public int categoryID { get; set; }
        public string path { get; set; }

        public void Add(Products s)
        {
            Connection gcon = new Connection();
            SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter(){ ParameterName = "@name", Value = s.name },
                    new SqlParameter(){ ParameterName = "@description", Value = s.description},
                    new SqlParameter(){ ParameterName = "@price", Value = s.price},
                    new SqlParameter(){ ParameterName = "@Qty", Value = s.quantity},
                    new SqlParameter(){ ParameterName = "@image", Value = s.path},
                    new SqlParameter(){ ParameterName = "@category", Value = s.categoryID},
                };
            gcon.ExecuteSP("InsertProductProcedure", parameters);
        }

        public void Delete(Products s)
        {
            throw new NotImplementedException();
        }

        public List<Products> GetIds()
        {
            throw new NotImplementedException();
        }

        public StringReader Recipt(Products a)
        {
            throw new NotImplementedException();
        }

        public Products Search(Products s)
        {
            throw new NotImplementedException();
        }

        public void Update(Products s)
        {
            throw new NotImplementedException();
        }
    }
}