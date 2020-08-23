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
    public partial class signup : System.Web.UI.Page
    {
        Connection con = new Connection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sdr = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlCommand cmd1 = new SqlCommand();
        SqlDataAdapter sdr1 = new SqlDataAdapter();
        DataSet ds1 = new DataSet();
        SqlCommand cmd2 = new SqlCommand();
        SqlDataAdapter sdr2 = new SqlDataAdapter();
        DataSet ds2 = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userinfo"] == null)
            {


                Button2.Visible = true;
                Button3.Visible = true;
            }
            else
            {

                Button2.Visible = false;
                Button3.Visible = false;
            }
            Show1();
            Showmob();
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

        protected void Show1()
        {
            con.getConnection();
            cmd1.CommandText = "select CategoryName,Cid from Category";
            cmd1.Connection = con.getConnection();
            sdr1.SelectCommand = cmd1;
            sdr1.Fill(ds1, "Category");
            Repeater2.DataSource = ds1;
            Repeater2.DataBind();
        }
        protected void Showmob()
        {
            con.getConnection();
            cmd2.CommandText = "select CategoryName,Cid from Category";
            cmd2.Connection = con.getConnection();
            sdr2.SelectCommand = cmd2;
            sdr2.Fill(ds2, "Category");
            Repeater3.DataSource = ds2;
            Repeater3.DataBind();

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}