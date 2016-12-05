<%@ Page Title="Villivekarat" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:SqlDataSource ID ="srcDataSQL" runat="server" ConnectionString="<%$ ConnectionStrings:DataSQL %>" ProviderName="MySql.Data.MySqlClient" />
    <asp:Label ID="testilbl" runat="server" />
</asp:Content>

