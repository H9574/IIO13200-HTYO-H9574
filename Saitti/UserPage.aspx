<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserPage.aspx.cs" Inherits="UserPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="nappulat">
        <asp:Button ID="btnHae" runat="server" Text="Hae kommentit" OnClick="btnHae_Click" />
    </div>
    <div id ="esitys">
        <asp:GridView ID="gvData" runat="server"></asp:GridView>
    </div>
    <div id="footer">
        <asp:Label ID="lblMessage" runat="server" Text="..."></asp:Label>
    </div>
    </form>
</body>
</html>
