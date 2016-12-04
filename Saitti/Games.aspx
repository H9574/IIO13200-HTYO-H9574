<%@ Page Title="Villivekarat" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Games.aspx.cs" Inherits="Games" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <h1>Kommentteja</h1>
    <div class="w3-row">
        <!-- pelien haku -->
        <asp:SqlDataSource ID ="srcDataSQL" runat="server"
            ConnectionString="<%$ ConnectionStrings:DataSQL %>"
            ProviderName="MySql.Data.MySqlClient"
            SelectCommand="SELECT * FROM GAME_TBL"
            DeleteCommand="DELETE FROM GAME_TBL WHERE ID=@ID"
            UpdateCommand="UPDATE GAME_TBL 
            SET game=@game, likes=@likes_game
            WHERE (ID=@ID)">
        </asp:SqlDataSource>

        <h2>Kaikki pelit</h2>
        <asp:GridView ID="gvGames" runat="server" DataSourceID="srcDataSQL" AllowSorting="True" >
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        </div>
</asp:Content>