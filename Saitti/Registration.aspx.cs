using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class Registration : System.Web.UI.Page
{
    String MyMessage;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TallennaUusi_Click(object sender, EventArgs e)
    {
        string ignore = "select|from|delete|where|drop"; //oikeuksien vaihtaminen sql kielellä KIELLETTÄVÄ oikeuksien manageriointi
        Regex regex = new Regex(@"^(?!["+ ignore +"])[a-zA-Z0-9]{4,30}$");
        Match matchUser = regex.Match(NewUsername.Text);
        Match matchPass = regex.Match(NewPassword1.Text);
        if (matchUser.Success && matchPass.Success)
        {
            if (NewPassword1.Text == NewPassword2.Text)
            {
                MyMessage = "Uutta käyttäjätunnusta luodaan";
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
}

public class Users
{
    string[] _UserNames = { "Ville", "Milla", "Olli" };
    string[] _UserPass = { "Salasana", "Supersala", "Salsasala" };

    public Users()
    {
    }

    public string[] UserNames
    {
        get
        {
            return _UserNames;
        }
    }
    public string[] UserPass
    {
        get
        {
            return _UserPass;
        }
    }
}