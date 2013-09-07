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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void _Authenticate(object sender, AuthenticateEventArgs e)
    {
        //authentication code
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        string aSQL = "select ID_USER, NAME_USER, PASSWORD from [USER] where UPPER(NAME_USER)= @USER and UPPER(PASSWORD)=@PASS" ;
        try
        {
            SqlCommand cmd = new SqlCommand(aSQL, con);
            cmd.Parameters.Add("@User", SqlDbType.Char, 10, "NAME_SER").Value = Login1.UserName.ToUpper();
            cmd.Parameters.Add("@Pass", SqlDbType.Char, 10, "PASSWORD").Value = Login1.Password.ToUpper();
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            //check database for names
            dr.Read();
            if (dr.HasRows)
            {
                Session["user"] = dr["ID_USER"];
                Response.Redirect("cart.aspx?ID=" + Request.QueryString["ID"] + "&quant" + Request.QueryString["quant"]);
            }
            else
                Response.Write("User or password invalid");

        }
        finally
        {
            con.Close();
        }
    }
}