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
    public partial class SClassE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            if (Session["theuser"] == null)
                Response.Redirect("WebForm1.aspx");
            userLabel.Text = Session["theusername"].ToString();
            userTitleLabel.Text = Session["theuserTitle"].ToString();
            //SqlDataSource1.SelectCommand =" SELECT 修課名單.*, 課程.*, 教師.姓名 FROM 修課名單 INNER JOIN 課程 ON 修課名單.開課代碼 = 課程.開課代碼 INNER JOIN 教師 ON 課程.教師代碼 = 教師.教師代碼WHERE   修課名單.學號 LIKE '" + Session["theuser"].ToString() + "'";
            //SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataSet;
            GridView2.DataSourceID = "SqlDataSource1";
            GridView2.DataBind();
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "GridRows")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView2.Rows[index];
                Label1.Text = Server.HtmlDecode(row.Cells[0].Text);
                Label2.Text = Server.HtmlDecode(row.Cells[1].Text);
                Label3.Text = Server.HtmlDecode(row.Cells[4].Text);

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Elective.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand SCD = new SqlCommand();
            SCD.Connection = con;
            SCD.CommandText = "SELECT 課程評論.* FROM 課程評論";
            con.Open();
            SqlDataAdapter ADP = new SqlDataAdapter(SCD);
            DataSet DS = new DataSet();
            ADP.Fill(DS);
            DataTable DT = DS.Tables[0];
            int A = DT.Rows.Count+1;


            SCD.CommandText = "Insert Into 課程評論(開課代碼,編號,評論者,評分,內文)values('" + Label1.Text + "','" + A.ToString() + "','" + Session["theuser"].ToString() + "','" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "')";
            // SCD.CommandText = "Insert Into 欲選名單(開課代碼,學號,學年,學期)values('"+myRow.Cells[0].Text+"','" + Session["theuser"].ToString() + "','"+Session["year"].ToString() + "','"+ Session["semester"].ToString() + "')";
            
            
            SCD.ExecuteNonQuery();           
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

    }
}