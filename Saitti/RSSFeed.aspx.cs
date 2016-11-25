using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class RSSFeed : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //asetetaan XmlDataSource pointtaamaan Iltasanomien RSS feediin
            xdsFeedit.DataFile = @"http://feeds.ign.com/ign/game-reviews?format=xml";
            GetFeeds();
        }
    }

    protected void btnGetFeeds_Click(object sender, EventArgs e)
    {
        // no longer exists. how embarassing
    }
    protected void GetFeeds()
    {
        try
        {
            //hakee xml:n XmlDocument-olioon
            XmlDocument doc = new XmlDocument();
            doc = xdsFeedit.GetXmlDocument();
            //rssfeedin title ja julkaisuaika 
            XmlNode node1 = doc.SelectSingleNode("/rss/channel");
            //string otsikko = node1["title"].InnerText;
            //string jaika = node1["pubDate"].InnerText;
            //string jaika = "";
            //ltMessages.Text = string.Format("<h1>{0} {1}</h1>", otsikko, jaika);
            XmlNodeList nodes = doc.SelectNodes("/rss/channel/item");
            string rsstitle = "";
            //string rssdate = "";
            //string rsscreator = "";
            string rsslink = "";
            string rsstext = "";
            foreach (XmlNode item in nodes)
            {
                //loopitetaan kaikki itemit läpi
                rsstitle = item["title"].InnerText;
                //rssdate = item["pubDate"].InnerText.AsDateTime().ToString;
                //rsscreator = item["creator"].InnerText;
                rsslink = item["link"].InnerText;
                rsstext = item["description"].InnerText;
                ltMessages.Text += string.Format("<div style='font-family:arial;'><h2 style='margin-bottom:2px;'><a href='{0}'>{1}</a></h2><br>{2} <a href='{0}'><b>Read more!</b></a></div><br>", rsslink, rsstitle, rsstext);
            }

        }
        catch (Exception ex)
        {
            ltMessages.Text = ex.Message;
        }
    }
}