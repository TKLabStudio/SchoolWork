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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie cook = new HttpCookie("UserInfo");
        cook.Values["UserName"] = HttpUtility.UrlEncode(TextBox1.Text);
        cook.Values["UserAddress"] = HttpUtility.UrlEncode(TextBox2.Text);
        cook.Values["LastVisited"] = DateTime.Now.Date.ToString();
        cook.Expires = DateTime.Now.AddDays(7);
        Response.Cookies.Add(cook);
        Response.Redirect("Default2.aspx");
    }
}