using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
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
      //  string asqlr = "UPDATE dbo.User SET Name = @NAME " + "password = @PASS"; 
        try
        {
            SqlCommand cmd = new SqlCommand(aSQL, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@NAME", SqlDbType.Char, 15, "NAME_SER").Value = CreateUserWizard1.UserName; //instead of NAME_SER
            cmd.Parameters.Add("@PASS", SqlDbType.Char, 10, "password").Value = CreateUserWizard1.Password;
            con.Open();
            if (cmd.ExecuteNonQuery() > 0) //inserted to record (user created successfully)
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
    protected void Password_TextChanged(object sender, EventArgs e)
    {

    }
}