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
    public partial class index : System.Web.UI.Page
    {
        Connection con = new Connection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sdr = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlCommand cmd1 = new SqlCommand();
        SqlDataAdapter sdr1 = new SqlDataAdapter();
        DataSet ds1 = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {           
            if (Session["userinfo"] == null)
            {
                Label1.Text = "";
                Button1.Visible = false;
                Button2.Visible = true;
            }
            else
            {
                Label1.Text = "welcome user " + Session["userinfo"].ToString();
                Button2.Visible = false;
            }
            Show();
            Show1();
        }     
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
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
        protected void Show()
        {
            con.getConnection();
            cmd.CommandText = "select TOP 6 * from ProductView order by Pid desc";
            cmd.Connection = con.getConnection();
            sdr.SelectCommand = cmd;
            sdr.Fill(ds, "ProductView");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {            
            Response.Redirect("Login.aspx");
        }

     
    }
}