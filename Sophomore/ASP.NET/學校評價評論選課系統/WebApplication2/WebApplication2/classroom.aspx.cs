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
    public partial class classroom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["scdtext"]==null)
                Response.Redirect("WebForm1.aspx");
            if (Request.QueryString["title"] == null)
            {
                userLabel.Visible = false;
                userTitleLabel.Visible = false;
                Panel1.Visible = false;
            }
            else
            {
                userLabel.Text = Session["theusername"].ToString();
                userTitleLabel.Text = Session["theuserTitle"].ToString();
                Panel1.Visible = true;
            }
           
               
                string[,] ClassroomCount = new string[8,20];
                //int ClassroomNum ;
                int B,B1,B2;
                if(Session["scdtext"]==null)
                    Response.Redirect("WebForm1.aspx");
                string STR = "";        
                string[] STRArray; 
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Elective.mdf;Integrated Security=True;Connect Timeout=30");
                con.Open();
                SqlCommand SCD = new SqlCommand();
                SCD.CommandText = Session["scdtext"].ToString();
                SCD.Connection = con;
                SqlDataAdapter ADP = new SqlDataAdapter(SCD);
                DataSet DS = new DataSet();
                ADP.Fill(DS);
                DataTable DT = DS.Tables[0];
               
                for (int I = 0; I < DT.Rows.Count; I++)
                {
                     
                     STR = DT.Rows[I]["上課時間編號"].ToString();
                     STRArray = STR.Split(',');
                     for (int I2 = 0; I2 < STRArray.Length;I2++ ){
                      
                         bool A = Int32.TryParse(STRArray[I2],out B);
                         B1 = B / 100;
                         B2 = B % 100;

                         ClassroomCount[B1, B2] = DT.Rows[I]["課程名稱"].ToString() + "<br/>" + DT.Rows[I]["上課教室"].ToString();
                    
                     }
                 
                }
                for (int i = 0; i <= 17; i++)
                {
                    string z = "UPDATE [暫存] SET [星期一]='" + ClassroomCount[1, i] + "',[星期二]='" + ClassroomCount[2, i] + "',[星期三]='" + ClassroomCount[3, i] + "',[星期四]='" + ClassroomCount[4, i] + "',[星期五]='" + ClassroomCount[5, i] + "',[星期六]='" + ClassroomCount[6, i] + "',[星期日]='" + ClassroomCount[7, i] + "' WHERE [節次] ='" + i + "'";
                    SqlCommand SCD2 = new SqlCommand(z, con);
                    SCD2.ExecuteNonQuery();
                }
                con.Close();
                GridView1.DataBind();
                
             
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void BUT1_Click(object sender, EventArgs e)
        {
            string forscdtext = "SELECT 修課名單.* , 課程.* FROM 修課名單 INNER JOIN 課程 ON 修課名單.開課代碼=課程.開課代碼 WHERE 學號 LIKE '" + Session["theuser"].ToString() + "' AND 課程.學年 LIKE '" + TextBox1.Text + "' AND 課程. 學期 LIKE '" + DropDownList1.SelectedValue + "'";
            Session["scdtext"] = forscdtext;
            Page_Load(sender, e);
        }
    }
}