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


public partial class cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //login authentication
        if (Session["user"] != null)  
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] != null)
                {
                    Add(Convert.ToInt32(Request.QueryString["quant"]));
                    GridView1.DataSource = GetDataSetcart();
                    GridView1.DataBind();
                }
            }
        }
        else
            Response.Redirect("login.aspx?ID=" + Request.QueryString["Id"] + "&quant=" + Request.QueryString["quant"]);

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
            DataColumn colId = new DataColumn("Id", System.Type.GetType("System.Int32"),"");
            DataTable dt = new DataTable("cart");
            dt.Columns.Add(colId);
            dt.Columns.Add("Name", System.Type.GetType("System.String"), "");
            dt.Columns.Add("Quantity", System.Type.GetType("System.Int32"),"");
            dt.Columns.Add("price", System.Type.GetType("System.Double"), "");
            dt.Columns.Add("Subtotal", System.Type.GetType("System.Double"),"Quantity*Price");
            dt.Columns.Add("Total", System.Type.GetType("System.Double"),"SUM(Subtotal)");
            
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
    private void Add(int quantity)
    {
        
        //search database
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        string aSQL = "select Name, price from products where Id="+Request.QueryString["Id"].ToString();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(aSQL, con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            //get Data from the DataSet
            DataTable dt = GetDataSetcart().Tables[0];
            //find product
            DataRow row = dt.Rows.Find(Request.QueryString["Id"]);

            if (row == null)
            {
                row = dt.NewRow();
                row["Id"] = Request.QueryString["Id"];
                row["Name"] = reader["Name"];
                row["Quantity"] = quantity;
                row["price"] = reader["price"];
                dt.Rows.Add(row);
            }
            else
            {
                int qtd = Convert.ToInt32(row["Quantity"]);
                qtd = qtd + quantity;
                row["Quantity"] = qtd;
            }
        }
        finally
        {
            con.Close();
        }
        }
    //Remove product from cart
    private void Remove(int aId)
    {
        DataSet ds = GetDataSetcart();
        DataRow row = ds.Tables[0].Rows.Find(aId);
        if (row != null)
        {
            ds.Tables[0].Rows.Remove(row);
            ds.AcceptChanges();
            GridView1.DataSource = GetDataSetcart();
            GridView1.DataBind();
        }
    }

    private void Finish()
    {
        //dhmiourgia syndeshs me vash dedomenwn
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        //anoigma syndeshs me vash
        try
        {
            SqlCommand cmd = new SqlCommand("sp_InsertSales", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Date", SqlDbType.DateTime, 0, "Date_Sales").Value = DateTime.Now;
            cmd.Parameters.Add("@Price", SqlDbType.Decimal, 18, "Price").Value = GetDataSetcart().Tables[0].Rows[0]["TOTAL"];
            cmd.Parameters.Add("@UserId", SqlDbType.Int, 0, "Id_User").Value = Convert.ToInt32(1); //1 den exw security akomh
            con.Open();
            int aKey = Convert.ToInt32(cmd.ExecuteScalar());
            foreach (DataRow row in GetDataSetcart().Tables[0].Rows)
            {
                SqlCommand cmdItem = new SqlCommand("sp_InsertItemsSales", con);
                cmdItem.CommandType = CommandType.StoredProcedure;
                cmdItem.Parameters.Add("@IdSales", SqlDbType.Int, 0, "Id_Sales").Value = aKey;
                cmdItem.Parameters.Add("@IdProducts", SqlDbType.Int, 0, "Id_product").Value = row["Id"];
                cmdItem.Parameters.Add("@Price", SqlDbType.Decimal, 18, "price").Value = row["Price"];
                cmdItem.Parameters.Add("@Quantity", SqlDbType.Int, 0, "Quantity").Value = row["Quantity"];
                cmdItem.ExecuteNonQuery();

            }
            Session["Total"] = GetDataSetcart().Tables[0].Rows[0]["TOTAL"];
            Session["cart"] = null;
            Response.Redirect("finish.aspx");
        }
        finally
        {
            con.Close();
        }

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
    protected void Button2_Click2(object sender, EventArgs e)
    {
        Finish();
    }
    protected void RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Remove(Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value));
    }
    protected void RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType==DataControlRowType.Footer)
        {
            e.Row.Cells[3].Text = "Total: ";
            e.Row.Cells[4].Text = String.Format("{0:c}", GetDataSetcart().Tables[0].Rows[0]["TOTAL"]);

        }
    }
}