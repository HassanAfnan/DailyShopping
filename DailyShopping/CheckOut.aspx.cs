using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DailyShopping
{
    public partial class CheckOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["name"] = TextBox1.Text;
            Session["email"] = TextBox2.Text;
            Session["phone"] = TextBox3.Text;
            Session["address"] = TextBox4.Text;
            double totalAmount = Convert.ToDouble(Session["grandTotal"].ToString());
            Response.Redirect("https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=clashofc036-facilitator@gmail.com&amount=" + totalAmount / 167.9 + "&return=http://localhost:12905/Thankyou.aspx");
             
        }
    }
}