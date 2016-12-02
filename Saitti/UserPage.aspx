<%@ Page Title="Villivekarat" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserPage.aspx.cs" Inherits="UserPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div id="nappulat">
        <asp:Button ID="btnHae" runat="server" Text="Hae profiilitiedot" OnClick="btnHae_Click" />
    </div>
    <div id ="esitys">
        <asp:GridView ID="gvData" runat="server"></asp:GridView>
        <div>
            <asp:Image ID="imgAvatar" runat="server" />
        </div>
        <div>
            <div>
                <h1><asp:Label ID="lblName" runat="server" Text="Tonttu Torvinen"></asp:Label></h1>
            </div>
            <div>
                <asp:Label ID="lblAgeloc" runat="server" Text="99 v, korvatunturi"></asp:Label>
            </div>
        </div>
        <div>
            <asp:Label ID="lblBio" runat="server" Text="onkos täällä kilttejä lapsia :)"></asp:Label>
        </div>
    </div>
    <div id="footer">
        <asp:Label ID="lblMessage" runat="server" Text=" "></asp:Label>
    </div>
</asp:Content>

