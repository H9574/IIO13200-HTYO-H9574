using System;
using System.Data.SqlClient;
using System.Data;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Web.Security;
using System.IO;

public partial class login : System.Web.UI.Page
{
    String MyMessage;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Request.IsAuthenticated)
        {
            Otsikkolbl.Text = "Mikä on sinun suosikki pelisi? Kirjaudu sisään ja kerro se!";
            Userlbl.Text = "Käyttäjätunnus:";
            Passlbl.Text = "Salasana:";
            Button.Text = "Kirjaudu sisään";
        }
        else
        {
            Otsikkolbl.Text = "Aika lähteä? Tule pian uudestaan";
            Button.Text = "Kirjaudu ulos";
        }
    }

    protected void LahetaKirjautuminen_Click(object sender, EventArgs e)
    {
        if (RegexpCheck(txtUsername.Text, txtPassword.Text))
        {
            MD5 md5Hash = MD5.Create();
            string connectionString = ConfigurationManager.ConnectionStrings["DataSQL"].ConnectionString.ToString();
            string queryCheckUser = "SELECT * FROM USER_TBL WHERE name = '" + txtUsername.Text + "'";

            //eka etsitään käyttäjä ja taulun numero, exception jos käyttäjää ei olekaan
            string hashed_pass_number = CheckCommand(queryCheckUser, connectionString, 2);

            //seuraavaksi haetaan itse salasana
            string queryCheckPass = "SELECT * FROM PASS_TBL WHERE ID = " + hashed_pass_number;
            string hashed_pass = CheckCommand(queryCheckPass, connectionString, 1);

            if (VerifyMd5Hash(md5Hash, txtPassword.Text, hashed_pass))
            {
                //session muuttujiin käyttäjän numero taulusta, jotta löydämme oikeat kommentit
                string queryCheckUserNumber = "SELECT * FROM USER_TBL WHERE name = '" + txtUsername.Text + "'";
                string user_FK = CheckCommand(queryCheckUserNumber, connectionString, 0);
                Session["UserNumber"] = user_FK;

                //Authenticointi
                FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, chkPersistCookie.Checked);

                //uudelleen ohjaus
                Response.Redirect("UserPage.aspx");
            }
            else
            {
                MyMessage = "Kirjautuminen epäonnistui";
            }
        }
        else
        {
            MyMessage = "Kentät sisältävät vahingollista tietoa";
        }
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + MyMessage + "');", true);
    }

    protected void KirjauduUlos_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("Index.aspx");
    }
    //md5 laskeminen string muotoisesta muuttujasta
    static string GetMd5Hash(MD5 md5Hash, string input)
    {
        //muutetaan toiseen muotoon ja käydään muuntamassa jokainen merkki yksi kerrallaan kunnes salasana on salattu
        byte[] data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));
        StringBuilder sBuilder = new StringBuilder();
        for (int i = 0; i < data.Length; i++)
        {
            sBuilder.Append(data[i].ToString("x2"));
        }
        return sBuilder.ToString();
    }
    //regexp tarkistus syötetyille tiedoille
    static bool RegexpCheck(string user, string pass)
    {
        string ignore = "select|from|delete|where|drop"; //oikeuksien vaihtaminen sql kielellä KIELLETTÄVÄ oikeuksien manageriointi
        Regex regex = new Regex(@"^(?![" + ignore + "])[a-zA-Z0-9]{4,30}$");
        Match matchUser = regex.Match(user);
        Match matchPass = regex.Match(pass);
        if (matchUser.Success && matchPass.Success)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    // Tarkista salasanan salaus
    static bool VerifyMd5Hash(MD5 md5Hash, string input, string hash)
    {
        // salaa salasana
        string hashOfInput = GetMd5Hash(md5Hash, input);
        // vertaa salauksien tuloksia toisiinsa
        StringComparer comparer = StringComparer.OrdinalIgnoreCase;
        if (0 == comparer.Compare(hashOfInput, hash))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    //haetaan tietoa taulusta
    private static string CheckCommand(string queryString, string connectionString, int column_number)
    {
        //Palauttaa jostain syystä -1 vastaukseksi kun pitäisi olla 5
        using (MySqlConnection connection = new MySqlConnection(connectionString))
        {
            MySqlCommand command = new MySqlCommand(queryString, connection);
            command.Connection.Open();
            try
            {
                MySqlDataReader reader = command.ExecuteReader();
                string data = "";
                while (reader.Read())
                {
                    data = Convert.ToString(reader.GetString(column_number));
                }
                reader.Close();
                command.Connection.Close();
                reader.Dispose();
                command.Connection.Dispose();
                return data;
            }
            catch (Exception)
            {
                command.Connection.Close();
                command.Connection.Dispose();
                return "Error";
            }
        }
    }
}