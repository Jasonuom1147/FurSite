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
        Label1.Text = TextBox1.Text + ", welcome to Visual Web Developer!";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            System.Diagnostics.Process.Start("http://www.microsoft.com");
        }
        catch { }
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}