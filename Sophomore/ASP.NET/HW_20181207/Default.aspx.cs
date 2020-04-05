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
    CheckBoxList cblist = new CheckBoxList();
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        cblist.Items.Add(CheckBoxList1.SelectedItem);
        //CheckBoxList1.Items.Remove(CheckBoxList2.SelectedItem);
        //CheckBoxList2.SelectedItem.Selected = false;
        PlaceHolder1.Controls.Add(cblist);
    }
    protected void CheckBoxList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        CheckBoxList1.Items.Add(CheckBoxList2.SelectedItem);
        CheckBoxList2.Items.Remove(CheckBoxList1.SelectedItem);
        CheckBoxList1.SelectedItem.Selected = false;
    }
}