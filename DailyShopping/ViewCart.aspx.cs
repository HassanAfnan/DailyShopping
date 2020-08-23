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
    public partial class ViewCart : System.Web.UI.Page
    {        
        Connection con = new Connection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sdr = new SqlDataAdapter();
        DataSet ds = new DataSet();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["UserInfo"] == null)
            {
                Response.Write("<script>alert('First Login to continue')</script>");
                Response.Redirect("Login.aspx");
                Response.Write("<script>alert('First Login to continue')</script>");
            }
            else
            {
                int Uid = 100;
                string email = Session["UserInfo"].ToString();
                Models.Connection con = new Models.Connection();
                SqlCommand com = new SqlCommand("select Uid from Users where email ='" + email + "'", con.getConnection());
                SqlDataReader rd = com.ExecuteReader();
                while (rd.Read())
                {
                    Uid = Convert.ToInt32(rd["Uid"].ToString());
                }              
                con.getConnection();
                cmd.CommandText = "select* from OrderDetails where Uid = '" + Uid + "'";
                cmd.Connection = con.getConnection();
                sdr.SelectCommand = cmd;
                sdr.Fill(ds, "ProductView");
                Repeater1.DataSource = ds;
                Repeater1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.Connection con = new Connection();
            int UserID = 100;
            string email = Session["UserInfo"].ToString();
            SqlCommand com = new SqlCommand("select Uid from Users where email ='" + email + "'", con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                UserID = Convert.ToInt32(rd["Uid"].ToString());
            }
            
            string sql = "Delete From OrderDetails where Uid = '"+ UserID +"' ";
            
            SqlCommand cmd = new SqlCommand(sql, con.getConnection());
            cmd.ExecuteNonQuery();
            Response.Redirect("index.aspx");
            Response.Write("<script>alert('Successfully deleted cart')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int UserID = 100; //fake
            string email = Session["UserInfo"].ToString();
            SqlCommand com = new SqlCommand("select Uid from Users where email ='" + email + "'", con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                UserID = Convert.ToInt32(rd["Uid"].ToString());
            }
            double GrandTotal = 0;
            double Total = 0;
            SqlCommand com1 = new SqlCommand("select sum(Total) from OrderDetails where Uid ='" + UserID + "'", con.getConnection());
            GrandTotal = Convert.ToDouble(com1.ExecuteScalar());
            //SqlDataReader rd1 = com1.ExecuteReader();
            //while (rd1.Read())
            //{
              //  Total = Convert.ToInt32(rd["Total"].ToString());
                //GrandTotal = GrandTotal + Total;
                //Total = 0;
            //}
            Label1.Text = GrandTotal.ToString();
            Session["grandTotal"] = GrandTotal;            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CheckOut.aspx");
        }
    }
}