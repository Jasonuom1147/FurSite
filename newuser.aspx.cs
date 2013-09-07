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

public partial class newuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        string aSQL = "sp_Insertuser";
        try
        {
            SqlCommand cmd = new SqlCommand(aSQL, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@User", SqlDbType.Char, 10, "NAME_SER").Value = CreateUserWizard1.UserName;
            cmd.Parameters.Add("@Pass", SqlDbType.Char, 10, "PASSWORD").Value = CreateUserWizard1.Password;
            con.Open();
            if (cmd.ExecuteNonQuery() > 0)
                CreateUserWizard1.ActiveStepIndex = 1;

            
        }
        finally
        {
            con.Close();
        }
    }

    protected void CreateUserWizard1_ContinueButtonClick(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void _createduser(object sender, EventArgs e)
    {

    }
}