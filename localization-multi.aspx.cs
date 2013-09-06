using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Globalization;
using System.Resources;
using System.Threading;
using System.Reflection;

public partial class localization_multi : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Thread.CurrentThread.CurrentCulture = new CultureInfo("en-Us");
        LoadString(Thread.CurrentThread.CurrentCulture);
    }
    private void LoadString(CultureInfo ci)
    {

        lblabtme.Text = m.GetString("AboutMe", ci);
        lbldesc.Text = m.GetString("Desc", ci);
        Button1.Text = m.GetString("Eng", ci);
        lblheader.Text = m.GetString("Header", ci);
        Button2.Text = m.GetString("Hindi", ci);
        Button3.Text = m.GetString("Marathi", ci);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Thread.CurrentThread.CurrentCulture = new CultureInfo("hi-IN");
       // Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("en-GB");
        LoadString(Thread.CurrentThread.CurrentCulture);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Thread.CurrentThread.CurrentCulture = new CultureInfo("mr-IN");
        LoadString(Thread.CurrentThread.CurrentCulture);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Thread.CurrentThread.CurrentCulture = new CultureInfo("el-GR");
        LoadString(Thread.CurrentThread.CurrentCulture);
    }
}