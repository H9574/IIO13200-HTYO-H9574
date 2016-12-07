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
        //srcComments.SelectCommand = "SELECT GAME_TBL.game, COMMENT_TBL.user_comment, USER_TBL.name FROM (COMMENT_TBL INNER JOIN GAME_TBL ON COMMENT_TBL.game_fk = GAME_TBL.ID) INNER JOIN USER_TBL ON (COMMENT_TBL.user_fk = USER_TBL.ID)";

        //if (!IsPostBack){}
        gvComments.HeaderRow.Cells[0].Text = "Peli";
        gvComments.HeaderRow.Cells[1].Text = "Kommentti";
        gvComments.HeaderRow.Cells[2].Text = "Käyttäjä";
        //gvComments.HeaderRow.Cells[3].Text = "Tykkäykset";
    }
}