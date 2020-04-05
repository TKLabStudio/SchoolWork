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
        try
        {
            TextBox A = (TextBox)PreviousPage.FindControl("TextBox1");
            TextBox B = (TextBox)PreviousPage.FindControl("TextBox2");
            Label3.Text = Convert.ToString(Convert.ToDouble(A.Text) + Convert.ToDouble(B.Text) * Convert.ToDouble(B.Text));
        }
        catch
        {
            Response.Redirect("/Default.aspx");
        }

        
    }
}