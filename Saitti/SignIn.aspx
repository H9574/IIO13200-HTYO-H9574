<%@ Page Title="Villivekarat" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:SqlDataSource ID ="srcDataSQL" runat="server" ConnectionString="<%$ ConnectionStrings:DataSQL %>" ProviderName="MySql.Data.MySqlClient" />
    <script runat="server">
        if(!Request.IsAuthenticated)
        {
    </script>

        <h1>Mik� on sinun suosikki pelisi? Kirjaudu sis��n ja kerro se!</h1>
            <div id="kirjautuminen">
                <asp:Label Text="K�ytt�j�nimi" runat="server"/>
                <asp:TextBox ID="txtUsername" runat="server" />
                <asp:Label Text="Salasana" runat="server"/>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" />
                <asp:Button ID="LahetaKirjautuminen" runat="server" Text="Kirjaudu sis��n" OnClick="LahetaKirjautuminen_Click" />
            </div>

    <script runat="server">
        }
        else
        {
    </script>

        <h1>Aika l�hte�? Tule pian uudestaan</h1>
            <div id="ulos">
                <asp:Button ID="KirjauduUlos" runat="server" Text="Kirjaudu ulos" OnClick="KirjauduUlos_Click" />
            </div>

    <script runat="server">
        }
    </script>
</asp:Content>

