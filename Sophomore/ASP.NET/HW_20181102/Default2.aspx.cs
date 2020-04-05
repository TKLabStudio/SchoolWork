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
        if(Request.QueryString["Name"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        
        try
        {
            string Name = Request.QueryString["Name"];
            string Address = Request.QueryString["Address"];
            Response.Write(Name + "<br>" + Address);
        }
        catch
        {
        
            Response.Redirect("Default.aspx");
        }

    }
}