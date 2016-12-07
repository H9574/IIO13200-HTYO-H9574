using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Games : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack){}
        gvComments.HeaderRow.Cells[1].Text = "Käyttäjä";
        gvComments.HeaderRow.Cells[2].Text = "Peli";
        gvComments.HeaderRow.Cells[3].Text = "Tykkäykset";
    }
}