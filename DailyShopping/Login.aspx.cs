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
    public partial class Login : System.Web.UI.Page
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