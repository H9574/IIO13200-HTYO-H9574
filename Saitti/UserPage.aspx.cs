using System;
using System.Configuration;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class UserPage : System.Web.UI.Page
{
    string xmlfilu;
    protected void Page_Load(object sender, EventArgs e)
    {
        //luetaan web.configista xml-tiedoston nimi
        xmlfilu = ConfigurationManager.AppSettings["tiedosto"];
        //lblMessage.Text = xmlfilu;
        if (!Request.IsAuthenticated)
        {
            Response.Redirect("SignIn.aspx");
        }
    }

    protected void btnHae_Click(object sender, EventArgs e)
    {
        /*
        //luetaan xml-tiedostosta tiedot
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        DataView dv = new DataView();
        //esitetään ne GridViewssä
        ds.ReadXml(Server.MapPath(xmlfilu));
        dt = ds.Tables[0];
        dv = dt.DefaultView;
        //datan sitominen ui-kontrolliin
        gvData.DataSource = dv;
        gvData.DataBind();
        */

        XDocument xdoc = XDocument.Load(Server.MapPath(xmlfilu));
        string fname = xdoc.Descendants(XName.Get("fname")).First().Value;
        string lname = xdoc.Descendants(XName.Get("lname")).First().Value;
        string age = xdoc.Descendants(XName.Get("age")).First().Value;
        string loc = xdoc.Descendants(XName.Get("location")).First().Value;
        string quote = xdoc.Descendants(XName.Get("quote")).First().Value;
        string bio = xdoc.Descendants(XName.Get("biography")).First().Value;
        //lblMessage.Text = string.Format("Löytyi {0} kommenttia", dt.Rows.Count);
        lblName.Text = string.Format("{0} {1}", fname, lname);
        lblAgeloc.Text = string.Format("{0}v. - {1}", age, loc);
        lblBio.Text = string.Format("<h2><i>{0}</i></h2><br>{1}", quote, bio);
    }
}