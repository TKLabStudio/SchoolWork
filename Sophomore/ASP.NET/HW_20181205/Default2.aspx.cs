using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        HttpCookie cook = Request.Cookies["UserInfo"];
        if(cook!= null)
        {
        Label1.Text = cook.Values["UserName"];
        Label2.Text = cook.Values["UserAddress"];
        Label3.Text = cook.Values["LastVisited"];
        }

        else
        {
            Label1.Text = "Null";
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default3.aspx");
    }
}