<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RSSFeed.aspx.cs" Inherits="RSSFeed" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>VilliVekarat</title>
</head>
<body runat="server">
    <form id="form1" runat="server">
    <div>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="CSS/styles.css" type="text/css" runat="server"/>

<img id="image" src="Image/placeholder%20melon%208).png" style="width:100px;height:100px;" runat="server"/>

<div id="foxmenucontainer">
  <div id="foxmenu">
    <ul>
      <li><a href="Index.aspx" class="current"><span>Etusivu</span></a></li>
      <li><a href="Registration.aspx"><span>Kirjaudu sis��n</span></a></li>
      <li><a href="SignIn.aspx"><span>Rekister�idy</span></a></li>
      <li><a href="RSSFeed.aspx"><span>RSS-sy�te</span></a></li>
    </ul>
  </div>
</div>
    <div>
    <h1>Maailmalla tapahtuu...</h1>
    </div>
    </div>
    </form>
</body>
</html>