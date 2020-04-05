using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }else
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Default2.aspx");
        Label3.Text = Convert.ToString(Convert.ToDouble(TextBox1.Text) + Convert.ToDouble(TextBox1.Text) * Convert.ToDouble(TextBox2.Text));
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Default2.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}