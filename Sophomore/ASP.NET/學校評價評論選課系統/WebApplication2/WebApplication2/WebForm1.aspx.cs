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
    public partial class WebForm1 : System.Web.UI.Page
    {
    
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["year"] = "108";
            Session["semester"] = "上";
            if (Session["theuser"] != null)
            {
                Label1.Text = Session["theuser"].ToString();
                userLabel.Text = Session["theusername"].ToString();
                userTitleLabel.Text = Session["theuserTitle"].ToString();
                setButton.Visible = true;
                if (userTitleLabel.Text == "學生")
                {
                    SDropDownList.Visible = true;
                }
                if (userTitleLabel.Text == "教師")
                {
                    TDropDownList.Visible = true;
                }
                if (userTitleLabel.Text == "管理員")
                {
                    ADropDownList.Visible = true;
                    
                }
            }

            else
            {
                userLabel.Text = "未登入";
                userTitleLabel.Text = "";
                slistButton.Visible = true;
                tlistButton.Visible = true;
                alistButton.Visible = true;
            }
           
      
        }

    
        protected void slistButton_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("WebForm2.aspx?title=學生");
        }

        protected void tlistButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx?title=教師");
        }

        protected void alistButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx?title=管理員");
        }

        protected void setButton_Click(object sender, EventArgs e)
        {
            Session["theuser"] = null;
            Session["theusername"] = null;
            Session["theuserTitle"] = null;
            Response.Redirect("WebForm1.aspx");
        }

        protected void Menu4_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void TextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SearchButton1_Click1(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            string SearchTime="";
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
      
            SqlDataSource1.SelectCommand = "SELECT 課程.*, 教師.姓名 FROM 課程 INNER JOIN 教師 ON 課程.教師代碼 = 教師.教師代碼 WHERE 學制 LIKE '%" +
                SearchTextBox0.Text + "%' AND 開課系所 LIKE '%" + SearchTextBox1.Text + "%' AND 開課班級 LIKE '%" + SearchTextBox2.Text + "%'  AND 課程名稱 LIKE '%" +
                SearchTextBox3.Text + "%'  AND 開課代碼 LIKE '%" + SearchTextBox4.Text + "%'  AND 教師.姓名 LIKE '%" + SearchTextBox5.Text + "%'  AND 課程.教師代碼 LIKE '%" +
                SearchTextBox6.Text + "%' AND 上課時間 LIKE '%" + SearchTime + "%' AND 開課學院 LIKE '%" + SearchTextBox.Text + "%' AND 學年 LIKE '%" + SearchTextBox7.Text + "%' AND 學期 LIKE '%" + DropDownList4.SelectedValue + "%'";
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataSet;            
            GridView1.DataSourceID = "SqlDataSource1";
            GridView1.DataBind();
               
        }

        protected void SearchListDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        { 
 
            thereset(1);
            Label1.Text = SearchListDropDownList.Text;
           
         
            if (SearchListDropDownList.SelectedValue == "開課查詢")
            {
                Panel1.Visible = true;
                
            }

            else if (SearchListDropDownList.SelectedValue == "教室課表查詢")
            {
                Panel2.Visible = true;
            }
            else if (SearchListDropDownList.SelectedValue == "課堂與教師評價")
            {
                Panel3.Visible = true;
            }
        }

        private void thereset(int i)
        {

            if (i == 1)
            {
                SDropDownList.SelectedIndex = 0;
                TDropDownList.SelectedIndex = 0;
                ADropDownList.SelectedIndex = 0;
            }
            if (i == 2)
            {
                SearchListDropDownList.SelectedIndex = 0;
                TDropDownList.SelectedIndex = 0;
                ADropDownList.SelectedIndex = 0;
            }
            if (i == 3)
            {
                SearchListDropDownList.SelectedIndex = 0;
                SDropDownList.SelectedIndex = 0;
                ADropDownList.SelectedIndex = 0;
            }
            if (i == 4)
            {
                SearchListDropDownList.SelectedIndex = 0;
                SDropDownList.SelectedIndex = 0;
                TDropDownList.SelectedIndex = 0;
            }
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Button4.Visible = false;
            GridView1.Visible = false;
            GridView2.Visible = false;
            GridView3.Visible = false;
            GridView4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ERRORLabel1.Visible = false;
            ERRORLabel2.Visible = false;
            ERRORLabel3.Visible = false;
            ERRORLabel4.Visible = false;
           
            if (TextBox1.Text == "")
                ERRORLabel2.Visible = true;
            if (DropDownList5.Text == "")
                ERRORLabel3.Visible = true;
            if (TextBox2.Text == "")
                ERRORLabel4.Visible = true;
            if (ERRORLabel2.Visible == false && ERRORLabel3.Visible == false && ERRORLabel4.Visible == false)
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Elective.mdf;Integrated Security=True;Connect Timeout=30");
                con.Open();
                SqlCommand SCD = new SqlCommand();
                string forscdtext = "SELECT 課程名稱,上課時間編號 FROM [課程] WHERE 學年 LIKE '" + TextBox1.Text + "' AND 學期 LIKE '" + DropDownList5.SelectedValue + "' AND 上課教室 LIKE '" + TextBox2.Text + "'";
                SCD.CommandText = forscdtext;
                SCD.Connection = con;
                SqlDataReader SDR = SCD.ExecuteReader();
                if (SDR.Read())
                {
                    
                    Session["scdtext"] = forscdtext;
                    SDR.Close();
                    con.Close();
                    Response.Redirect("classroom.aspx");
                }
                else
                {
                    ERRORLabel1.Visible = true;
                    SDR.Close();
                    con.Close();   
                }
                
                
              
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;

            SqlDataSource2.SelectCommand = "SELECT 教師.姓名, 課程.連結 ,課程.學年 , 課程.學期 ,  課程.開課代碼, 課程.教師代碼, 課程.課程名稱 FROM 課程 INNER JOIN 教師 ON 課程.教師代碼 = 教師.教師代碼    WHERE 課程.課程名稱 LIKE '%" +
               evaluateTextBox.Text + "%' AND 課程.開課代碼 LIKE '%" + evaluateTextBox0.Text + "%' AND 課程.學年  LIKE '%" + evaluateTextBox1.Text + "%'  AND 教師.姓名 LIKE '%" +
                evaluateTextBox3.Text + "%' AND 課程.教師代碼 LIKE '%" + evaluateTextBox4.Text + "%' AND 課程.學期 LIKE '%" + DropDownList6.SelectedValue + "%'";
            SqlDataSource2.DataSourceMode = SqlDataSourceMode.DataSet;
            GridView2.DataSourceID = "SqlDataSource2";
            GridView2.DataBind();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "GridRows")
            {
                thereset(0);
                Button4.Visible = true;
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView2.Rows[index];
                Label1.Text = Server.HtmlDecode(row.Cells[0].Text);
                GridView3.Visible = true;
                GridView4.Visible = true;
                SqlDataSource4.SelectCommand = "SELECT 教師.姓名, 課程.連結 ,課程.學年 , 課程.學期 ,  課程.開課代碼, 課程.教師代碼, 課程.課程名稱 FROM 課程 INNER JOIN 教師 ON 課程.教師代碼 = 教師.教師代碼    WHERE 課程.開課代碼 LIKE '" + Server.HtmlDecode(row.Cells[0].Text) + "' and 課程.學年 LIKE '" + Server.HtmlDecode(row.Cells[2].Text) + "'and 課程.學期 LIKE '" + Server.HtmlDecode(row.Cells[3].Text) + "'";
                SqlDataSource4.DataSourceMode = SqlDataSourceMode.DataSet;
                GridView4.DataSourceID = "SqlDataSource4";
                GridView4.DataBind();
                
                float a = 0;
                float b = 0;
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Elective.mdf;Integrated Security=True;Connect Timeout=30");
                con.Open();
                SqlCommand SCD = new SqlCommand();
                SCD.CommandText = "SELECT * FROM [課程評論]WHERE 開課代碼 LIKE '" + Server.HtmlDecode(row.Cells[0].Text) + "'";
                SCD.Connection = con;
                SqlDataAdapter ADP = new SqlDataAdapter(SCD);
                DataSet DS = new DataSet();
                ADP.Fill(DS);
                DataTable DT = DS.Tables[0];

                for (int I = 0; I < DT.Rows.Count; I++)
                {
                    string z =DT.Rows[I]["評分"].ToString();
                    bool A = float.TryParse(z, out b);
                    a +=b;
               

                }
                a = a / DT.Rows.Count;
                GridView4.Rows[0].Cells[7].Text = a.ToString("0.0");
                Label1.Text = a.ToString("0.0");
                SqlDataSource3.SelectCommand = "SELECT 課程評論.* FROM [課程評論]WHERE 開課代碼 LIKE '" + Server.HtmlDecode(row.Cells[0].Text) + "'";
                SqlDataSource3.DataSourceMode = SqlDataSourceMode.DataSet;
                GridView3.DataSourceID = "SqlDataSource3";
                GridView3.DataBind();
                Label1.Text = Server.HtmlDecode(row.Cells[0].Text);
            }
    
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
                
        }

        protected void SDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = Session["theuser"].ToString();
            
            thereset(2);

            if (SDropDownList.SelectedValue == "課表查詢")
            {
                string forscdtext = "SELECT 修課名單.* , 課程.* FROM 修課名單 INNER JOIN 課程 ON 修課名單.開課代碼=課程.開課代碼 WHERE 學號 LIKE '" + Session["theuser"].ToString() + "' AND 課程.學年 LIKE '" + Session["year"].ToString() + "' AND 課程. 學期 LIKE '" + Session["semester"].ToString() + "'";
                Session["scdtext"] = forscdtext;
                Response.Redirect("classroom.aspx?title=student");

            }
            else if (SDropDownList.SelectedValue == "選課作業")
            {
                Response.Redirect("Elctive.aspx");
            }
            else if (SDropDownList.SelectedValue == "課堂與教師評價")
            {
                Label1.Text = "2";
                Response.Redirect("SClassE.aspx");
            }
        }

        protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }


        protected void gvButton_Click(object sender, EventArgs e)
        {

        }

        protected void TDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            thereset(3);

            if (TDropDownList.SelectedValue == "上傳課程大綱")
            {
                Response.Redirect("Teacherclass.aspx");
            }
            else if (TDropDownList.SelectedValue == "教室課表")
            {
                string forscdtext = "SELECT  課程.* FROM 課程  WHERE 教師代碼 LIKE '" + Session["theuser"].ToString() + "'";
                Session["scdtext"] = forscdtext;
                Response.Redirect("classroom.aspx");
            }
            else if (TDropDownList.SelectedValue == "課堂評價")
            {
                Response.Redirect("TeacherE.aspx");
            }
        }

        protected void ADropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            thereset(4);

            if (ADropDownList.SelectedValue == "檢舉內容查詢")
            {
                Response.Redirect("admin.aspx");

         
            }
   
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView3.Rows[index];
            Label1.Text = Server.HtmlDecode(row.Cells[0].Text);
            Panel4.Visible = true;
            Label2.Visible = false;
            REPLB.Text = GridView4.Rows[0].Cells[1].Text;
            REPLB2.Text = GridView4.Rows[0].Cells[4].Text;
            REPLB3.Text = Server.HtmlDecode(row.Cells[0].Text);
            REPLB4.Text = Server.HtmlDecode(row.Cells[1].Text);
            REPLB5.Text = Server.HtmlDecode(row.Cells[3].Text);
  
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
            if (Session["theuser"] != null)
            {
                if (TextBox3.Text != null)
                {
                    Panel4.Visible = false;
                    Label1.Text = "完成檢舉";
                    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Elective.mdf;Integrated Security=True;Connect Timeout=30");
                    con.Open();
                    SqlCommand SCD = new SqlCommand();
                    SCD.CommandText = "Insert Into 檢舉(評論編號,檢舉人,檢舉內容)values('" + REPLB3.Text + "','" + Session["theuser"].ToString() + "','" + TextBox3.Text + "')";
                    SCD.Connection = con;

                 
                    SCD.ExecuteNonQuery();
                    con.Close();
                }
            }
            else
                Label2.Visible = true;
                //result = MessageBox.Show("There are something wrong!", "ERROR");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            Button4.Visible = false;
        }
       
    }
}