using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Data;
using System.Configuration;
using MySql.Data;
using MySql.Data.MySqlClient;

public partial class Registration : System.Web.UI.Page
{
    String MyMessage;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TallennaUusi_Click(object sender, EventArgs e)
    {
        //Suoritetaan regularexpression tarkistus
        if (RegexpCheck(NewUsername.Text, NewPassword1.Text))
        {
            if (NewPassword1.Text == NewPassword2.Text)
            {
                MyMessage = "Uutta käyttäjätunnusta luodaan";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + MyMessage + "');", true);

                //viedään tietokantaan eka salasana
                //string connectionString = "<%$ ConnectionStrings:DataSQL %>";
                //ID ="srcDataSQL" runat="server" ConnectionString="<%$ ConnectionStrings:DataSQL %>" ProviderName="MySql.Data.MySqlClient" 
                //string connectionString = "Data Source=ServerName;" + "Initial Catalog=DataBaseName;" + "User id=UserName;" + "Password=Secret;";
                //string connectionString = "ConfigurationManager.ConnectionStrings["+'\u0022'+"DataSQL" + '\u0022' + "].ToString()";
                string connectionString = ConfigurationManager.ConnectionStrings["DataSQL"].ConnectionString.ToString();

                //salasanan salaus md5
                MD5 md5Hash = MD5.Create();
                string Hash_Pass = GetMd5Hash(md5Hash, NewPassword1.Text);
                string queryStringPass = "INSERT INTO PASS_TBL (Pass) VALUES('" + Hash_Pass + "')";
                CreateCommand(queryStringPass, connectionString);

                //käydään tarkistamassa salasanan ID ja annetaan se käyttäjä tauluun
                string queryCheckPass = "SELECT * FROM PASS_TBL WHERE Pass = '" + Hash_Pass + "'";
                string Pass_id = Convert.ToString(CheckCommand(queryCheckPass, connectionString));
                string queryStringUser = "INSERT INTO USER_TBL(name, pass_fk) VALUES('" + NewUsername.Text + "', " + Pass_id + ")";
                CreateCommand(queryStringUser, connectionString);

                //uudelleen ohjaus
                Response.Redirect("login.aspx");
            }
            else
            {
                MyMessage = "Salasanat eivät täsmää";
            }
        }
        else
        {
            MyMessage = "Kentät sisältävät kiellettyjä merkkejä";
        }
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('"+MyMessage+"');", true);
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
    //haetaan tietoa taulusta
    private static string CheckCommand(string queryString, string connectionString)
    {
        using (MySqlConnection connection = new MySqlConnection(connectionString))
        {
            MySqlCommand command = new MySqlCommand(queryString, connection);
            command.Connection.Open();
            //command.ExecuteNonQuery();
            string data = Convert.ToString(command.ExecuteScalar());
            command.Connection.Close();
            return data;
        }
    }
    //luodaan uusia rivejä tauluun
    private static void CreateCommand(string queryString, string connectionString)
    {
        //tämä rivi korjattavana
        using (MySqlConnection connection = new MySqlConnection(connectionString))
        {
            MySqlCommand command = new MySqlCommand(queryString, connection);
            command.Connection.Open();
            command.ExecuteNonQuery();
            command.Connection.Close();
        }
    }
    //md5 laskeminen string muotoisesta muuttujasta, ei suolausta
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
}