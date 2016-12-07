using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

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
            //string chosenOne = PelinValinta.SelectedItem.Text;
            PelinValinta.ClearSelection();
            PelinValinta.Items.FindByText(PelinValinta.SelectedItem.Text).Selected = true;
        }
    }
    protected void UusiKommentti_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DataSQL"].ConnectionString.ToString();
        string comment = Kommentti.Text;
        string user_FK = (string)(Session["UserNumber"]);
        //Pelitaulusta ei saa poistua mitään tai hajoaa
        int game_FK = Int32.Parse(PelinValinta.SelectedValue);
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + game_FK + "');", true);
        //string game_FK = PelinValinta.SelectedItem.Text;
        string queryString = "INSERT INTO COMMENT_TBL (user_fk,game_fk,likes,user_comment) VALUES(" + user_FK + "," + game_FK + ",'0','" + comment + "')";
        //CreateCommand(queryString, connectionString);
        //Response.Redirect(Request.RawUrl);
    }

    private void populateDropDown()
    {
        DataTable subjects = new DataTable();
        string connectionString = ConfigurationManager.ConnectionStrings["DataSQL"].ConnectionString.ToString();
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
            catch (Exception)
            {
                // error tänne
            }

        }

        // Vika mahdollisesti tässä?

        PelinValinta.Items.Insert(0, new ListItem("Valitse kommentoitava peli", "0"));

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