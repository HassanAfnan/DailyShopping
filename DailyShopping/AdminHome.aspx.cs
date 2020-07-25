using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DailyShopping
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminInfo"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                //Label1.Text = "welcome user " + Session["userinfo"].ToString();
                Button2.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}