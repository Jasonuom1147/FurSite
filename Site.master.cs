﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Text;
using System.Resources;
using System.Globalization;
using System.Threading;
using System.Reflection;

public partial class Account_MasterPage : System.Web.UI.MasterPage
{
    ResourceManager m;
    CultureInfo ci;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Thread.CurrentThread.CurrentCulture = new CultureInfo("en-Us");
            m = new ResourceManager("Resources.Strings", System.Reflection.Assembly.Load("App_GlobalResources"));
            ci = Thread.CurrentThread.CurrentCulture;
            LoadString(ci);
        }
        else
        {
            m = new ResourceManager("Resources.Strings", System.Reflection.Assembly.Load("App_GlobalResources"));
            ci = Thread.CurrentThread.CurrentCulture;
            LoadString(ci);
        }
 

    }
    private void LoadString(CultureInfo ci)
    {
        Search.Text = m.GetString("search", ci);
        welcome_message.Text = m.GetString("welcome_message", ci);
        flag1.Text = m.GetString("flag1", ci);
        flag2.Text = m.GetString("flag2", ci);
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "") //elegxw an exei grapsei kati o xrhsths
        {
            Response.Redirect("Home.aspx?Search="+TextBox1.Text);
        }
    }
    protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    protected void Menu3_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {


    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Thread.CurrentThread.CurrentCulture = new CultureInfo("el-GR");
        LoadString(Thread.CurrentThread.CurrentCulture);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Thread.CurrentThread.CurrentCulture = new CultureInfo("en-US");
        LoadString(Thread.CurrentThread.CurrentCulture);
    }

}
