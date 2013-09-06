using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class finish : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
            Response.Redirect("CreditCard.aspx");
        if (DropDownList1.SelectedIndex == 1)
            Response.Redirect("Post.aspx");
        if (DropDownList1.SelectedIndex == 2)
            Response.Redirect("paypal.aspx");
            
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}