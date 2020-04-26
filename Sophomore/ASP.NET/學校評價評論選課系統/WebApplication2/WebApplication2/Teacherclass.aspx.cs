using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace WebApplication2
{
    public partial class Teacherclass : System.Web.UI.Page
    {
        GridViewRow row;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["theuser"] == null)
                Response.Redirect("WebForm1.aspx");
            if (Session["theuserTitle"].ToString() != "教師")
                Response.Redirect("WebForm1.aspx");
            userLabel.Text = Session["theusername"].ToString();
            userTitleLabel.Text = Session["theuserTitle"].ToString();
            SqlDataSource1.SelectCommand = "SELECT * FROM [課程] WHERE 教師代碼 LIKE '" + Session["theuser"].ToString() + "'";
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataSet;
            GridView1.DataSourceID = "SqlDataSource1";
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "qwe")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                row = GridView1.Rows[index];
                
                Label1.Text="輸入連結";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Elective.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlCommand SCD = new SqlCommand();
            SCD.CommandText = "UPDATE [課程] SET [連結]='" + TextBox1.Text + "' WHERE [開課代碼] ='" + row.Cells[0].ToString() + "'";
            SCD.Connection = con;
            Label1.Text = "已更新";
            GridView1.DataBind();
        }

       

    }
}