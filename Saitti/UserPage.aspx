<%@ Page Title="Villivekarat" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserPage.aspx.cs" Inherits="UserPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div id="nappulat">
        <asp:Button ID="btnHae" runat="server" Text="Hae kommentit" OnClick="btnHae_Click" />
    </div>
    <div id ="esitys">
        <asp:GridView ID="gvData" runat="server"></asp:GridView>
    </div>
    <div id="footer">
        <asp:Label ID="lblMessage" runat="server" Text="..."></asp:Label>
    </div>
</asp:Content>

