using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ikkuna : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLaske_Click(object sender, EventArgs e)
    {
        //Lasketaan ikkunan tarjoushinta
        try
        {
            //käýttäjän syöetteet on aina syytä tarkistaa
            if (txtKorkeus.Text.Length * txtLeveys.Text.Length * txtKarmi.Text.Length > 0)
            {
                double leveys = Convert.ToDouble(txtLeveys.Text);
                double korkeus = Convert.ToDouble(txtKorkeus.Text);
                double karmi = Convert.ToDouble(txtKarmi.Text);
                double pintaala = (korkeus / 1000) * ((leveys - (2 * karmi)) / 1000); //m2
                double piiri = 2 * (leveys / 1000) + (korkeus / 1000);
                double alehinta = 100;
                double lasinelio = 45; //euroa per neliö
                double tyomenekki = 150; //euroa per ikkuna
                double kate = 0.3;//kate 30% on 0,3
                //hinnan laskeminen
                double hinta = (1 + kate) * ((pintaala * lasinelio) + (piiri * alehinta) + tyomenekki);
                //Tulos UI:hin
                lblhinta.Text = hinta.ToString();

            }
            else
            {
                lblMessages.Text = "Tarkista syötteet, jokin puuttuu tai on väärin...";
            }

        }
        catch(Exception ex)
        {
            lblMessages.Text = ex.Message;
        }
    }
}