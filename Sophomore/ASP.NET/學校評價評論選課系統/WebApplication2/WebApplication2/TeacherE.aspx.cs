using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class TeacherE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["theuser"] == null)
                Response.Redirect("WebForm1.aspx");
            userLabel.Text = Session["theusername"].ToString();
            userTitleLabel.Text = Session["theuserTitle"].ToString();
            SqlDataSource1.SelectCommand = "SELECT 課程評論.開課代碼, 課程評論.編號, 課程評論.評論者, 課程評論.評分, 課程評論.內文, 課程.課程名稱 FROM 課程評論 INNER JOIN 課程 ON 課程評論.開課代碼 = 課程.開課代碼  WHERE 課程.教師代碼 LIKE'" + Session["theuser"].ToString() +"'";
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataSet;
            GridView1.DataSourceID = "SqlDataSource1";
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}