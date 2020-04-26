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
    public partial class Elctive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["theuser"]==null)
                Response.Redirect("WebForm1.aspx");
            userLabel.Text = Session["theusername"].ToString();
            userTitleLabel.Text = Session["theuserTitle"].ToString();
            SqlDataSource1.SelectCommand = "SELECT 課程.*, 教師.姓名 FROM 課程 INNER JOIN 教師 ON 課程.教師代碼 = 教師.教師代碼 WHERE 學年 LIKE '" + Session["year"].ToString() + "' AND 學期 LIKE '%" + Session["semester"].ToString() + "%'";
           
            thetest();
            
        }

        private void thetest()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Elective.mdf;Integrated Security=True;Connect Timeout=30");            
            SqlCommand SCD = new SqlCommand();         
            SqlCommand SCD2 = new SqlCommand();
            SCD.Connection = con;
            string A = "未選上";
            string B = "加選";
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                A = "未選上";
                B = "登記預選";
                con.Open();
                GridViewRow row = GridView1.Rows[i];
                SCD.CommandText = "SELECT 修課名單.*  FROM 修課名單 WHERE  開課代碼 LIKE '"+row.Cells[0].Text+"'AND 學號 LIKE '" + Session["theuser"].ToString() + "' AND 學年 LIKE '" + Session["year"].ToString() + "' AND 學期 LIKE '" + Session["semester"].ToString() + "'";
                SCD.Connection = con;
                SqlDataReader SDR =SCD.ExecuteReader();
                if (SDR.Read())
                {
                    A = "以選上";
                    B = "退選";
                    SDR.Close();
                }
                else
                {
                    SDR.Close();
                    SCD.CommandText = "SELECT 欲選名單.*  FROM 欲選名單 WHERE  開課代碼 LIKE '" + row.Cells[0].Text + "'AND 學號 LIKE '" + Session["theuser"].ToString() + "' AND 學年 LIKE '" + Session["year"].ToString() + "' AND 學期 LIKE '" + Session["semester"].ToString() + "'";
                    SCD.Connection = con;
                    SDR = SCD.ExecuteReader();
                    if (SDR.Read())
                    {
                        A = "登記預選";
                        B = "取消預選";

                    }
                   
                }
                con.Close();
                Label1.Text += "1";
                row.Cells[17].Text = A;
                Button Z = (Button)row.FindControl("Button1");
                Z.Text = B;
               // row.Cells[18].Text = B;
            } 
        }

        protected void SearchButton1_Click1(object sender, EventArgs e)
        {
            string STR = "";
            int C = 0;
            string[] STRArray;
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Elective.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlCommand SCD = new SqlCommand();
            string forscdtext = "SELECT 修課名單.* , 課程.* FROM 修課名單 INNER JOIN 課程 ON 修課名單.開課代碼=課程.開課代碼 WHERE 學號 LIKE '" + Session["theuser"].ToString() + "' AND 課程.學年 LIKE '" + Session["year"].ToString() + "' AND 課程. 學期 LIKE '" + Session["semester"].ToString() + "'";
            SCD.CommandText = forscdtext;
            SCD.Connection = con;
            SqlDataAdapter ADP = new SqlDataAdapter(SCD);
            DataSet DS = new DataSet();
            ADP.Fill(DS);
            DataTable DT = DS.Tables[0];

            for (int I = 0; I < DT.Rows.Count; I++)
            {
                C++;
                STR += DT.Rows[I]["上課時間編號"].ToString();
                STR += ",";

            }
            Label1.Text = STR;
            
            con.Close();
            string Q = Session["theuser"].ToString();
            string SearchTime = "";
            if (DropDownList1.SelectedValue == null)
                SearchTime = SearchTime + "%";
            else
                SearchTime = SearchTime + DropDownList1.SelectedValue;
            if (DropDownList2.SelectedValue == null)
                SearchTime = SearchTime + "%";
            else
                SearchTime = SearchTime + DropDownList2.SelectedValue;
            if (DropDownList3.SelectedValue == null)
                SearchTime = SearchTime + "%";
            else
                SearchTime = SearchTime + DropDownList3.SelectedValue;
            string filter;
            string FF2;
            filter= "SELECT 課程.*, 教師.姓名 FROM 課程 INNER JOIN 教師 ON 課程.教師代碼 = 教師.教師代碼 WHERE 學制 LIKE '%" +
                SearchTextBox0.Text + "%' AND 開課系所 LIKE '%" + SearchTextBox1.Text + "%' AND 開課班級 LIKE '%" + SearchTextBox2.Text + "%'  AND 課程名稱 LIKE '%" +
                SearchTextBox3.Text + "%'  AND 開課代碼 LIKE '%" + SearchTextBox4.Text + "%'  AND 教師.姓名 LIKE '%" + SearchTextBox5.Text + "%'  AND 課程.教師代碼 LIKE '%" +
                SearchTextBox6.Text + "%' AND 上課時間 LIKE '%" + SearchTime + "%' AND 開課學院 LIKE '%" + SearchTextBox.Text + "%' AND 學年 LIKE '" + Session["year"].ToString() + "' AND 學期 LIKE '%" + Session["semester"].ToString() + "%'";
            STRArray = STR.Split(',');
            FF2=filter;
            for (int I2 = 0; I2 < STRArray.Length-1; I2++)
            {
                FF2 = FF2 + "AND 課程.上課時間編號 NOT LIKE '%" + STRArray[I2] + "%'"; 
            }
            Label1.Text = FF2;
            if (CheckBox1.Checked)
                SqlDataSource1.SelectCommand = FF2;
            else
                SqlDataSource1.SelectCommand = filter;
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataSet;
            GridView1.DataSourceID = "SqlDataSource1";
            GridView1.DataBind();
            thetest();
        }

        protected void TextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
               
            
        }
        protected void Btn_ch_Click(object sender, System.EventArgs e)
        {
            Button btn = (Button)sender;
            GridViewRow myRow = (GridViewRow)btn.NamingContainer;
            Label1.Text = btn.Text;

            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Elective.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand SCD = new SqlCommand();
            SCD.Connection = con;
            if (btn.Text == "登記預選")
                SCD.CommandText = "Insert Into 欲選名單(開課代碼,學號,學年,學期)values('"+myRow.Cells[0].Text+"','" + Session["theuser"].ToString() + "','"+Session["year"].ToString() + "','"+ Session["semester"].ToString() + "')";
            else if (btn.Text == "退選")
                SCD.CommandText = "DELETE FROM  修課名單 WHERE  開課代碼 LIKE '" + myRow.Cells[0].Text + "'AND 學號 LIKE '" + Session["theuser"].ToString() + "' AND 學年 LIKE '" + Session["year"].ToString() + "' AND 學期 LIKE '" + Session["semester"].ToString() + "'";
            else if (btn.Text == "取消預選")
                SCD.CommandText = "DELETE FROM  欲選名單 WHERE  開課代碼 LIKE '" + myRow.Cells[0].Text + "'AND 學號 LIKE '" + Session["theuser"].ToString() + "' AND 學年 LIKE '" + Session["year"].ToString() + "' AND 學期 LIKE '" + Session["semester"].ToString() + "'";


            con.Open();
            SCD.ExecuteNonQuery();
            thetest();
            con.Close();
        }


        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
           
            

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}