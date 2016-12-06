using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class CommentPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Request.IsAuthenticated)
        {
            Response.Redirect("SignIn.aspx");
        }
        else
        {
            string user_FK = (string)(Session["UserNumber"]);
            srcDataSQL.SelectCommand = "SELECT GAME_TBL.game, COMMENT_TBL.user_comment FROM COMMENT_TBL INNER JOIN GAME_TBL ON COMMENT_TBL.game_fk = GAME_TBL.ID WHERE user_fk='"+ user_FK + "'";
            populateDropDown();
        }
        /*
        if (!IsPostBack)
        {
            populateDropDown();
        }*/
    }
    protected void UusiKommentti_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DataSQL"].ConnectionString.ToString();
        string comment = Kommentti.Text;
        string user_FK = (string)(Session["UserNumber"]);
        string queryString = "INSERT INTO COMMENT_TBL (comment,user_fk) VALUES('" + comment + "','"+ user_FK + "')";
        CreateCommand(queryString, connectionString);
        Response.Redirect(Request.RawUrl);
    }
    private void populateDropDown()
    {
        DataTable subjects = new DataTable();

        using (MySqlConnection con = new MySqlConnection(connectionString))
        {

            try
            {
                MySqlDataAdapter adapter = new MySqlDataAdapter("SELECT ID,game FROM GAME_TBL", con);
                adapter.Fill(subjects);

                PelinValinta.DataSource = subjects;
                PelinValinta.DataTextField = "game";
                PelinValinta.DataValueField = "ID";
                PelinValinta.DataBind();
            }
            catch (Exception ex)
            {
                // Handle the error
            }

        }

        // Add the initial item - you can add this even if the options from the
        // db were not successfully loaded
        PelinValinta.Items.Insert(0, new ListItem("<Select Subject>", "0"));

    }
    private static void CreateCommand(string queryString, string connectionString)
    {
        using (MySqlConnection connection = new MySqlConnection(connectionString))
        {
            MySqlCommand command = new MySqlCommand(queryString, connection);
            command.Connection.Open();
            command.ExecuteNonQuery();
            command.Connection.Close();
        }
    }
}