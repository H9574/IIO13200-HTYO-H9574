<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tervetuloa Harjoitukseen 1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>nimesi,kiitos</h3>
        <asp:TextBox ID="txtHenkilo" runat="server"></asp:TextBox>
        <asp:button ID="btnValita" runat="server" Text="Välitä parametri" OnClick="btnValita_Click"/>
        <asp:button ID="btnSessio" runat="server" Text="Tallenna sessio" OnClick="btnSessio_Click"/>
        <asp:button ID="btnMCookie" runat="server" Text="Tallenna Cookie" OnClick="btnMCookie_Click"/>
    </div>
    </form>
</body>
</html>
