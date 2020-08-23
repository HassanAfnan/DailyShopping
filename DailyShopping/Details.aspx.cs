using DailyShopping.Models;
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
                Show();
                
            }
        
        Connection con = new Connection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sdr = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Show()
        {
            con.getConnection();
            cmd.CommandText = "select * from ProductView Where Pid = '"+ Product_id +"'";
            cmd.Connection = con.getConnection();
            sdr.SelectCommand = cmd;
            sdr.Fill(ds, "ProductView");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Qty"] = TextBox1.Text;
        }
    }
}