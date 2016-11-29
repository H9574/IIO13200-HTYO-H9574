<%@ Page Title="Villivekarat" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:LinqDataSource ContextTypeName="Users" TableName="UserNames" Where="0" ID="LinqDataSource1" runat="server" />
    <h1>Mik‰ on sinun suosikki pelisi? Kirjaudu sis‰‰n ja kerro se!</h1>
        <div id="UudetTunnukset">
            <asp:Label Text="Vaatii v‰hint‰‰n 4 merkin mittaista merkkijonoa. Sallii merkit a-z sek‰ numerot." runat="server"/>
            <asp:Label Text="K‰ytt‰j‰nimi" runat="server"/>
            <asp:TextBox ID="NewUsername" runat="server" />
            <asp:Label Text="Salasana" runat="server"/>
            <asp:TextBox ID="NewPassword1" TextMode="Password" runat="server" />
            <asp:Label Text="Salasana uudestaan" runat="server"/>
            <asp:TextBox ID="NewPassword2" TextMode="Password" runat="server" />
            <asp:Button ID="TallennaUusi" runat="server" Text="Tallenna k‰ytt‰j‰tunnus" OnClick="TallennaUusi_Click" />
        </div>
</asp:Content>
