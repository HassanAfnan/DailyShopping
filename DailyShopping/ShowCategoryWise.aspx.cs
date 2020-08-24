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
    public partial class ShowCategoryWise : System.Web.UI.Page
    {
        int Category_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            Show();
        }
        Models.Connection con = new Models.Connection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sdr = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Show()
        {
            Category_id = Convert.ToInt16(Request.QueryString["cid"].ToString());            
            con.getConnection();
            cmd.CommandText = "select * from ProductView where category='"+Category_id+"'";
            cmd.Connection = con.getConnection();
            sdr.SelectCommand = cmd;
            sdr.Fill(ds, "ProductView");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
    }
}