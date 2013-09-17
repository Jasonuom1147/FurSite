using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminPages_Admin : System.Web.UI.Page
{
    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString); 
    protected void Page_Load(object sender, EventArgs e)
    {
        con1.Open();

    }
    protected void Submitimport_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into products values('" + ProductIdfl.Text + "','"+Namefl.Text+"','"+Lengthfl.Text+"','"+Shoulderfl.Text+"','"+Sleevesfl.Text+"','"+Pricefl.Text+"','"+Datefl.Text+"','"+Quantityfl.Text+"')", con1);
        cmd.ExecuteNonQuery();
        con1.Close();
        GridView1.DataBind();
        Confirm_success.Visible = true;
        Confirm_success.Text = "Your Product imported successfully!";
        IdProd.Text = "";
        prodName.Text = "";
        LengthLb.Text = "";
        Shoulderlb.Text = "";
        sleeveslb.Text = "";
        Pricelb.Text = "";
        Datelb.Text = "";
        Quantitylb.Text = "";
    }
}