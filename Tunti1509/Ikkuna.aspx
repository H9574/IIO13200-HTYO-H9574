<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ikkuna.aspx.cs" Inherits="Ikkuna" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ikkuna laskin</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>Ikkunan tiedot metreina</h3>
        <asp:TextBox ID="txtKorkeus" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtLeveys" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtKarmi" runat="server"></asp:TextBox>
        <asp:button ID="btnLaske" runat="server" Text="Laske tarjoushinta" OnClick="btnLaske_Click"/>
        <asp:Label ID="lblhinta" runat="server" Text="hinta" />

    </div>
    <div>
        <asp:Label ID="lblMessages" runat="server" />
    </div>
    </form>
</body>
</html>
