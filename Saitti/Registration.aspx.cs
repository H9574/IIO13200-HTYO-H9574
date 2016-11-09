using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TallennaUusi_Click(object sender, EventArgs e)
    {

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