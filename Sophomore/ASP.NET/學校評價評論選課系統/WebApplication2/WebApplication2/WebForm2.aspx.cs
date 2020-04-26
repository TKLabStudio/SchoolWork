using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {   
        String theTitle ="";
        protected void Page_Load(object sender, EventArgs e)
        {
           
            theTitle= Request.QueryString["title"];
            Label4.Text = theTitle + "登入";
            if (Request.QueryString["title"]==null)
                Response.Redirect("WebForm1.aspx");
               
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Elective.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlCommand SCD = new SqlCommand();
            if (theTitle=="學生")
            SCD.CommandText = "SELECT * FROM [學生] WHERE [學號] LIKE '" + TextBox1.Text + "'";
            else if (theTitle == "教師")
                SCD.CommandText = "SELECT * FROM [教師] WHERE [教師代碼] LIKE '" + TextBox1.Text + "'";
            else if (theTitle == "管理員")
                SCD.CommandText = "SELECT * FROM [管理員] WHERE [Id] LIKE '" + TextBox1.Text + "'";

            SCD.Connection = con;
            SqlDataReader SDR =SCD.ExecuteReader();
            if (SDR.Read())
            {

                if (TextBox2.Text == SDR["密碼"].ToString())
                {
                   
                    Session["theuser"] = TextBox1.Text.ToUpper();
                    Session["theusername"] = SDR["姓名"].ToString();
                    Session["theuserTitle"]  = theTitle;
                    SDR.Close();
                    con.Close();
                    Response.Redirect("WebForm1.aspx");                   
                }
                else
                { 
                    Label3.Text = "錯誤"; 
                    SDR.Close();
                    con.Close();
                
                }
            }
            else
            Label3.Text = "錯誤";
            
            
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

    }
}