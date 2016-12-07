<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
        <ul>
        <asp:Button ID = 'Nappula1' runat = 'server' Text="Kirjaudu ulos" OnClick = "KirjauduUlos_Click" />
        </ul>
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
        <asp:Button ID = 'Nappula2' runat = 'server' Text="Kirjaudu sisään" OnClick = "LahetaKirjautuminen_Click" />
        </ul>
</asp:Content>

