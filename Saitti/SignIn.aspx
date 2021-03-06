<%@ Page Title="Villivekarat" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:SqlDataSource ID ="srcDataSQL" runat="server" ConnectionString="<%$ ConnectionStrings:DataSQL %>" ProviderName="MySql.Data.MySqlClient" />
    <asp:Table">
        <ul>
        <asp:Label ID="Otsikkolbl" runat="server" />
        </ul>
        <ul>
        <asp:Label ID="Userlbl" runat="server" />
        </ul>
        <ul>
        <asp:TextBox ID = 'txtUsername' runat = 'server'/>
        </ul>
        <ul>
        <asp:Label ID="Passlbl" runat="server" />
        </ul>
        <ul>
        <asp:TextBox ID = 'txtPassword' TextMode = 'Password' runat = 'server' />
        </ul>
        <ul>
            <asp:CheckBox id="chkPersistCookie" runat="server" autopostback="false" />
        </ul>
        <ul>
        <asp:Button ID = 'Button' runat = 'server' OnClick = 'LahetaKirjautuminen_Click' />
        </ul>
    </asp:Table>
</asp:Content>

