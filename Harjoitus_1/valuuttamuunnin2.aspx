<%@ Page Language="C#" AutoEventWireup="true" CodeFile="valuuttamuunnin2.aspx.cs" Inherits="valuuttamuunnin2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tervetuloa Harjoitukseen 1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Tervetuloa:</h1>
        <asp:TextBox ID="TxtNimi" runat="server"></asp:TextBox>
        <asp:TextBox ID="TxtMarkat" runat="server"></asp:TextBox>
        <asp:button ID="btnMuunna" runat="server" Text="Markat euroiksi" OnClick="btnMuunna_Click"/>
    </div>
    </form>
</body>
</html>
