<%@ Page Title="Villivekarat" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RSSFeed.aspx.cs" Inherits="RSSFeed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h1>IGN:n peliarvostelut</h1>
        <asp:XmlDataSource ID="xdsFeedit" XPath="rss/channel/item" runat="server"></asp:XmlDataSource>
        <asp:Literal id="ltMessages" runat="server" />
</asp:Content>
