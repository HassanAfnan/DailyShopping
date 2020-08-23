using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DailyShopping
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Product_id;
            if (Session["UserInfo"] == null)
            {
                Response.Redirect("Login.aspx");
                Response.Write("<script>alert('First Login to continue')</script>");
            }
            else 
            {
                try
                {
                    int Uid = 100;
                    string email = Session["UserInfo"].ToString();
                    Product_id = Convert.ToInt32(Request.QueryString["pid"].ToString());
                    Models.Connection con = new Models.Connection();
                    SqlCommand com = new SqlCommand("select Uid from Users where email ='" + email + "'", con.getConnection());
                    SqlDataReader rd = com.ExecuteReader();
                    while (rd.Read())
                    {
                        Uid = Convert.ToInt32(rd["Uid"].ToString());
                    }
                    SqlCommand com1 = new SqlCommand("select * from Product where Pid ='" + Product_id + "'", con.getConnection());
                    SqlDataReader rd1 = com1.ExecuteReader();
                    string proName = "";
                    int proPrice = 0;
                    string proImage = "";
                    while (rd1.Read())
                    {
                        proName = rd1["name"].ToString();
                        proPrice = Convert.ToInt32(rd1["price"].ToString());
                        proImage = rd1["image"].ToString();
                    }
                    string NewQty = Session["Qty"].ToString();
                    int total = Convert.ToInt32(NewQty) * proPrice;
                    con.ExecuteQuery("insert into OrderDetails values ('" + Uid + "','" + proName + "','" + proPrice + "','" + proImage + "','" + NewQty + "','" + total + "')");
                    Response.Write("<script type='text/javascript'>alert('Added to the Cart')</script>");
                    Response.Redirect("index.aspx");
                    Response.Write("<script type='text/javascript'>alert('Added to the Cart')</script>");
                }
                catch(Exception ex)
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(),
                        "Msg", "alert('Please press set quantity button before add to cart');", true);   
                    Response.Write("Please press set quantity button before add to cart"+ex.InnerException);
                    Response.Redirect("index.aspx");
                }
            }  
                      
        }
    }
}