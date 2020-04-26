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
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["theuserTitle"].ToString() != "管理員")
                Response.Redirect("WebForm1.aspx");
            userLabel.Text = Session["theusername"].ToString();
            userTitleLabel.Text = Session["theuserTitle"].ToString();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Elective.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand SCD = new SqlCommand();
            SCD.Connection = con;
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];
            Label1.Text = Server.HtmlDecode(row.Cells[1].Text);
            if(e.CommandName =="DELComment")
            {
                
                SCD.CommandText = "DELETE FROM  課程評論 WHERE  編號 LIKE '" + Server.HtmlDecode(row.Cells[0].Text) + "'AND 開課代碼 LIKE '" + Server.HtmlDecode(row.Cells[3].Text) + "' AND 評論者 LIKE '" + Server.HtmlDecode(row.Cells[4].Text) + "'";
                con.Open();
                SCD.ExecuteNonQuery();
                con.Close();
            
            }
           
           
            Label1.Text = Server.HtmlDecode(row.Cells[0].Text);
            SCD.CommandText = "DELETE FROM  檢舉 WHERE  評論編號 LIKE '" + Server.HtmlDecode(row.Cells[0].Text) + "'AND 檢舉人 LIKE '" + Server.HtmlDecode(row.Cells[1].Text) + "' AND 檢舉內容 LIKE '" + Server.HtmlDecode(row.Cells[2].Text) + "'";
            con.Open();
            SCD.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();

            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            Panel1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            Panel1.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //連結宣告
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Elective.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand SCD = new SqlCommand();
            SCD.Connection = con;
            //名單依開課代碼分類
            SCD.CommandText = "SELECT DISTINCT 開課代碼 FROM 欲選名單";
            SqlDataAdapter ADP = new SqlDataAdapter(SCD);
            DataSet DS = new DataSet();
            ADP.Fill(DS);
            DataTable DT = DS.Tables[0];
            con.Close();
            Random r = new Random();
            //逐開課代碼檢查
            for (int I = 0; I < DT.Rows.Count; I++)
            {
                Label1.Text += "Q";
                //取課程剩餘人數
                string A = "";
                string B = "";
                int capnow = 0, peoplenow = 0;
                SCD.CommandText = "SELECT  課程.* FROM 課程 WHERE 開課代碼 LIKE '" + DT.Rows[I]["開課代碼"].ToString() + "'";
                con.Open();
                SqlDataReader SDR = SCD.ExecuteReader();
                if (SDR.Read())
                {
                    A = SDR["修課上限"].ToString();
                    B = SDR["選課人數"].ToString();

                }
                SDR.Close();
                con.Close();
                Label1.Text += A;
                Label1.Text += B;
                bool Q = Int32.TryParse(A, out capnow);
                Q = Int32.TryParse(B, out peoplenow);
                //如果人數未滿取該課欲選名單
                if (capnow > peoplenow)
                {

                    SCD.CommandText = "SELECT  欲選名單.* FROM 欲選名單 WHERE 開課代碼 LIKE '" + DT.Rows[I]["開課代碼"].ToString() + "'";
                    con.Open();
                    SqlDataAdapter ADP2 = new SqlDataAdapter(SCD);
                    DataSet DS2 = new DataSet();
                    ADP.Fill(DS2);
                    DataTable DT2 = DS2.Tables[0];
                    con.Close();
                    int dt2count=0;
                    
                    if (capnow - peoplenow > DT2.Rows.Count)
                         dt2count =DT2.Rows.Count;
                    else
                        dt2count = capnow - peoplenow;
                    int[] dt2ran = new int[dt2count];
                    int runcout = dt2count;
                    for (int i2 = 0; i2 < dt2count; i2++) 
                    {
                        Label1.Text += dt2count.ToString();
                        //取不重複亂數
                        dt2ran[i2]=r.Next(0, dt2count);                        
                        for (int i3 = 0; i3 < i2; i3++) 
                        {
                            while (dt2ran[i2] == dt2ran[i3])
                            {
                                i3 = 0;
                                dt2ran[i2] = r.Next(0, dt2count);

                            }
                        }

                    }
                    for (int i2 = 0; i2 < dt2count; i2++)
                    {
                        SCD.CommandText = "Insert Into 修課名單 (學年,學期,開課代碼,學號)values('" + DT2.Rows[dt2ran[i2]]["學年"].ToString() + "','" + DT2.Rows[dt2ran[i2]]["學期"].ToString() + "','" + DT2.Rows[dt2ran[i2]]["開課代碼"].ToString() + "','" + DT2.Rows[dt2ran[i2]]["學號"].ToString() + "')";
      

                        con.Open();
                        SCD.ExecuteNonQuery();
                        con.Close();

                        SCD.CommandText = "DELETE FROM  欲選名單 WHERE  學年 LIKE '" + DT2.Rows[dt2ran[i2]]["學年"].ToString() + "' and 學期 LIKE'" + DT2.Rows[dt2ran[i2]]["學期"].ToString() + "' AND 開課代碼 LIKE'" + DT2.Rows[dt2ran[i2]]["開課代碼"].ToString() + "'AND 學號 LIKE'" + DT2.Rows[dt2ran[i2]]["學號"].ToString() + "'";

                        con.Open();
                        SCD.ExecuteNonQuery();
                        con.Close();     
                    }
                    SCD.CommandText = "SELECT  修課名單 .* FROM 修課名單   WHERE 開課代碼 LIKE '" + DT.Rows[I]["開課代碼"].ToString() + "'";
                    con.Open();
                    SqlDataAdapter ADP3 = new SqlDataAdapter(SCD);
                    DataSet DS3 = new DataSet();
                    ADP.Fill(DS3);
                    DataTable DT3 = DS3.Tables[0];
                    con.Close();
                    SCD.CommandText = "UPDATE [課程] SET [選課人數]='" + DT3.Rows.Count.ToString() + "' WHERE [開課代碼] ='" + DT.Rows[I]["開課代碼"].ToString() + "'";
                    con.Open();
                    SCD.ExecuteNonQuery();
                    con.Close();  
                }
            }
            GridView2.DataBind();
            GridView3.DataBind();
        }
    }
}