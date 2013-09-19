using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

public partial class SubPages_Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Products", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        listView.DataSource = dt;
        listView.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
   
     
    }
    protected void listView_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}