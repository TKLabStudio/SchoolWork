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
        Response.WriteFile("tk.txt");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ListBox1.Items.Add(TextBox1.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ListBox1.Items.Remove(TextBox2.Text);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx?Name=" + Server.HtmlEncode(TextBox1.Text) + "&Address=" + Server.HtmlEncode(TextBox2.Text));
    }
}