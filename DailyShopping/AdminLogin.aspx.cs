using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DailyShopping
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["AdminInfo"] == null)
            //{
            //    Response.Redirect("Login.aspx");
            //}
            //else
            //{
            //    //Label1.Text = "welcome user " + Session["userinfo"].ToString();                
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.ClearTextBox ct = new Models.ClearTextBox();
            Models.Admin ad = new Models.Admin();
            ad.email = TextBox1.Text;
            ad.Name = TextBox2.Text;
            ad.password = TextBox3.Text;
            ad.signUp(ad);
            Response.Write("<script>alert('Successfully Registered')</script>");
            Response.Redirect("AdminHome.aspx");
            ct.ClearTextbox(TextBox1, TextBox2, TextBox3);
        }
    }
}