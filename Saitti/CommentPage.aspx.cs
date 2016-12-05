using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            /*
            <script type="text/javascript" src="SessionScript.js" runat="server"\>
            Javascript SessionScript.js
            var user_FK = e.object.text;
            Session["UserNumber"] = user_FK;
            */
            string user_FK = (string)(Session["UserNumber"]);
        }
    }
}