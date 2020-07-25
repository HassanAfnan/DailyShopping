using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DailyShopping
{
    public partial class AdminInsertProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetName();
            }
            if (Session["AdminInfo"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                //Label1.Text = "welcome user " + Session["userinfo"].ToString();                
            }
        }
        Models.Categories cat = new Models.Categories();
        private void GetName()
        {
            DropDownList1.Items.Clear();
            foreach (var item in cat.GetIds())
            {
                DropDownList1.Items.Add(Convert.ToString(item.CatName));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("pic/") + filename);
                Image1.ImageUrl = "pic/" + filename;
                Label1.Text = "pic/" + filename;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Models.Connection gcon = new Models.Connection();
            Models.ClearTextBox ct = new Models.ClearTextBox();
            Models.Products pro = new Models.Products();
            pro.name = TextBox1.Text;
            pro.description = TextBox2.Text;
            pro.price = Convert.ToInt32(TextBox3.Text);
            pro.quantity = Convert.ToInt32(TextBox4.Text);
            SqlCommand com = new SqlCommand("select Cid from CategoryView where CategoryName ='" + DropDownList1.Text + "'", gcon.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                pro.categoryID = Convert.ToInt32(rd["Cid"].ToString());
            }
            pro.path = Label1.Text;
            pro.Add(pro);
            Response.Write("<script>alert('Successfully Inserted Product')</script>");
            //Response.Redirect("AdminHome.aspx");
            ct.ClearTextbox(TextBox1, TextBox2, TextBox3, TextBox4);
            Label1.Text = "";
            Image1.ImageUrl = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}