using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DailyShopping
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.ClearTextBox ct = new Models.ClearTextBox();
            Models.Users users = new Models.Users();
            users.firstName = TextBox1.Text;
            users.lastName = TextBox2.Text;
            users.email = TextBox3.Text;
            users.password = TextBox4.Text;
            users.address = TextBox5.Text;
            users.city = TextBox6.Text;
            users.state = TextBox7.Text;
            users.pin = TextBox8.Text;
            users.mobile = TextBox9.Text;
            users.signUp(users);
            Response.Write("<script>alert('Successfully Registered')</script>");
            Response.Redirect("Login.aspx");
            ct.ClearTextbox(TextBox1, TextBox3, TextBox4, TextBox5, TextBox6, TextBox7,TextBox8,TextBox9);
        }
    }
}