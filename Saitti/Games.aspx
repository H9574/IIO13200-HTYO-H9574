<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Games.aspx.cs" Inherits="Games" %>

<!DOCTYPE html>

<<html xmlns="http://www.w3.org/1999/xhtml">
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
      <li><a href="Index.aspx"><span>Pelit</span></a></li>
      <li><a href="RSSFeed.aspx"><span>RSS-syöte</span></a></li>
      <li><a href="SignIn.aspx"><span>Rekisteröidy</span></a></li>
      <li><a href="Registration.aspx"><span>Kirjaudu sisään</span></a></li>
    </ul>
  </div>
</div>
    <div>
    <h1>Kommentteja</h1>
        <asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
            <!-- muokkaa alle oman myslin tiedot, kommentien haku -->
            <asp:SqlDataSource ID ="srcMysli" runat="server"
                ConnectionString="<%$ ConnectionStrings:Mysli %>"
                ProviderName="MySql.Data.MySqlClient"
                SelectCommand="SELECT * FROM Pelaaja"
                DeleteCommand="DELETE FROM Pelaaja WHERE PelaajaID=@PelaajaID"
                UpdateCommand="UPDATE Pelaaja 
                SET Nimi=@Nimi, Seura=@Seura, Pelipaikka=@Pelipaikka, 
                Nro=@Nro, Maalit=@Maalit, Syotot=@Syotot
                WHERE (PelaajaID=@PelaajaID)">
            </asp:SqlDataSource>
            <h2>Pelaajat Liigassa</h2>
            <asp:GridView ID="gvPlayers" runat="server" DataSourceID="srcMysli" AllowSorting="True" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
        </asp:Content>
    </div>
    </div>
    </form>
</body>
</html>
