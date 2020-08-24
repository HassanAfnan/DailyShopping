using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DailyShopping
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.Login lo = new Models.Login();
            lo.email = TextBox1.Text;
            lo.password = TextBox2.Text;
            lo.GetLogin(lo);
            if (lo.role == "Admin" && lo.cond == true)
            {
                Response.Write("<script>alert('Welcome Admin')</script>");
                Session["AdminInfo"] = TextBox1.Text;
                Response.Redirect("AdminHome.aspx");
            }
            else if (lo.role == "Users" && lo.cond == true)
            {
                Response.Write("<script>alert('Welcome User')</script>");
                Session["UserInfo"] = TextBox1.Text;
                Response.Redirect("index.aspx");
            }
            if (lo.cond == false)
            {
                Response.Write("<script>alert('Invalid User Id Or Password')</script>");
            }
        }
    }
}