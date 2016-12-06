<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
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
        <asp:Button ID = 'Nappula' runat = 'server' />
        </ul>

    </asp:Table>
</asp:Content>

