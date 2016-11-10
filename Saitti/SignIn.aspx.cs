using System;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LahetaKirjautuminen_Click(object sender, EventArgs e)
    {
        string connectionInfo = null;
        //luo tietokanta....
        connectionInfo = "Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password";
        SqlConnection con = new SqlConnection(connectionInfo);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from login where username='" + txtUsername.Text + "' and pwd ='" + txtPassword.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("UserPage.aspx");
        }
        else
        {
            Response.Write("<script>alert('Please enter valid Username and Password')</script>");
        }
    }
}