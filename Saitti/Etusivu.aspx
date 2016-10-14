<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Etusivu.aspx.cs" Inherits="Etusivu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>
