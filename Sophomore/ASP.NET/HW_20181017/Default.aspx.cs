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
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Label1.Text = e.X.ToString() + ","+ e.Y.ToString();
    }
    protected void Label2_DataBinding(object sender, EventArgs e)
    {

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != null && TextBox2.Text != null)
        {
            int n = int.Parse(TextBox1.Text) * int.Parse(TextBox2.Text);
            if (CheckBox1.Checked == true)
                n = 0;
            Label1.Text = n.ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        for(int i=0;i<CheckBoxList1.Items.Count;i++)
        {
            if (CheckBoxList1.Items[i].Selected)
                Label1.Text += CheckBoxList1.Items[i].Value + " ";
        }
    }
    
}