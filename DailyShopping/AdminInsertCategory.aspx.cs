using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DailyShopping
{
    public partial class AdminInsertCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminInfo"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Models.Admin ad = new Models.Admin();
                string em = Session["AdminInfo"].ToString();
                string returned_name = ad.GetAdminName(em);
                Label1.Text = returned_name;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.Connection gcon = new Models.Connection();
            Models.ClearTextBox ct = new Models.ClearTextBox();
            Models.Categories cat = new Models.Categories();
            cat.CatName = TextBox1.Text;
            cat.Add(cat);
            Response.Write("<script>alert('Successfully Inserted Category')</script>");
            //Response.Redirect("AdminHome.aspx");
            ct.ClearTextbox(TextBox1);            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}