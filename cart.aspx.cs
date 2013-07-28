using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["Id"] != null)
            {
                Add(Convert.ToInt32(Request.QueryString["Quant"]));
                GridView1.DataSource = GetDataSetcart();
                GridView1.DataBind();
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    public DataSet GetDataSetcart()
    {
        if (Session["cart"] == null)
        {
            DataSet ds = new DataSet();
            DataColumn colId = new DataColumn("Id", System.Type.GetType("System.Int32"), " ");
            DataTable dt = new DataTable("cart");
            dt.Columns.Add(colId);
            dt.Columns.Add("Name", System.Type.GetType("System.string"), " ");
            dt.Columns.Add("Quantity", System.Type.GetType("System.Int32"), " ");
            dt.Columns.Add("Price", System.Type.GetType("System.Double"), " ");
            dt.Columns.Add("Subtotal", System.Type.GetType("System.Double"), "Quantity*Price");
            dt.Columns.Add("Total", System.Type.GetType("System.Double"), "SUM(Subtotal)");

            //key field 
            DataColumn[] key = new DataColumn[1];
            key[0] = colId;
            dt.PrimaryKey = key;
            ds.Tables.Add(dt);
            Session["cart"] = ds;
            return ds;
        }
        else
        {
            return (Session["cart"] as DataSet);
        }
 
    }
    private void Add(int Quantity)
    {
        //search database
        SqlConnection con = new SqlConnection("connectionString");
        String aSQL = "Select Name, Price from products WHERE Id=" + Request.QueryString["Id"].ToString();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(aSQL, con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            //get Data from the DataSet
            DataTable dt = GetDataSetcart().Tables[0];

            DataRow row = dt.Rows.Find(Request.QueryString["Id"]);

            if (row == null)
            {
                row = dt.NewRow();
                row["Id"] = Request.QueryString["Id"];
                row["Name"] = reader["Name"];
                row["Quantity"] = Quantity;
                row["Price"] = reader["Price"];
                dt.Rows.Add(row);
            }
            else
            {
                int qtd = Convert.ToInt32(row["Quantity"]);
                qtd = qtd + Quantity;
                row["Quantity"] = qtd;
            }
        }
        finally
        {
            con.Close();
        }
        }
    
    
}