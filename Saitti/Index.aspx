<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>VilliVekarat</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="CSS" href="styles.css" type="text/css" />

<img id="image" src="Image/foxmenu_bg-OFF.gif" runat="server" />

<h1>Horizontal CSS Navigation Menu</h1>
<hr />
<div id="foxmenucontainer">
  <div id="foxmenu">
    <ul>
      <li><a href="http://www.free-css.com/" class="current"><span>CSS Templates</span></a></li>
      <li><a href="http://www.free-css.com/"><span>CSS Layouts</span></a></li>
      <li><a href="http://www.free-css.com/"><span>CSS Books</span></a></li>
      <li><a href="http://www.free-css.com/"><span>CSS Menus</span></a></li>
      <li><a href="http://www.free-css.com/"><span>CSS Tutorials</span></a></li>
      <li><a href="http://www.free-css.com/"><span>CSS Reference</span></a></li>
      <li><a rel="nofollow" target="_blank" href="http://www.13styles.com" title="13styles.com"><span>13styles</span></a></li>
    </ul>
  </div>
</div>
    <div>
    <h1>Mikä on sinun suosikki pelisi? Kirjaudu sisään ja kerro se!</h1>
        <div id="kirjautuminen">
            <asp:Label Text="Käyttäjänimi" runat="server"/>
            <asp:TextBox ID="Username" runat="server" />
            <asp:Label Text="Salasana" runat="server"/>
            <asp:TextBox ID="Password" runat="server" />
            <asp:Button ID="LahetaKirjautuminen" runat="server" Text="Kirjaudu sisään" OnClick="LahetaKirjautuminen_Click" />
        </div>
        <div id="UudetTunnukset">
            <asp:Label Text="Käyttäjänimi" runat="server"/>
            <asp:TextBox ID="NewUsername" runat="server" />
            <asp:Label Text="Salasana" runat="server"/>
            <asp:TextBox ID="NewPassword1" runat="server" />
            <asp:Label Text="Salasana uudestaan" runat="server"/>
            <asp:TextBox ID="NewPassword2" runat="server" />
            <asp:Button ID="TallennaUusi" runat="server" Text="Tallenna käyttäjätunnus" OnClick="TallennaUusi_Click" />
        </div>
    </div>
    </div>
    </form>
</body>
</html>
