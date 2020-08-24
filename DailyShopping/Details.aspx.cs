using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DailyShopping
{
    public partial class Details : System.Web.UI.Page
    {
        int Product_id;
        //string product_name, product_desc, product_image;
        //string product_price, product_qty;

        protected void Page_Load(object sender, EventArgs e)
        {
            Product_id = Convert.ToInt16(Request.QueryString["pid"].ToString());            
            Models.Products pro_details = new Models.Products();
            pro_details.pid = Product_id;
            pro_details = pro_details.GetDetails(pro_details);
            Label1.Text = pro_details.price.ToString();
            Label2.Text = pro_details.name;
            Label4.Text = pro_details.description;
            Image1.ImageUrl = pro_details.path;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}