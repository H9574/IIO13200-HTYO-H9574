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
                
            </Columns>
        </asp:GridView>
    </div>
    <h2>Kaikki kommentit</h2>
    <div>
        <!-- commentit -->
        <asp:SqlDataSource ID ="srcComments" runat="server"
            ConnectionString="<%$ ConnectionStrings:DataSQL %>"
            ProviderName="MySql.Data.MySqlClient"
            SelectCommand="SELECT DISTINCT GAME_TBL.game, COMMENT_TBL.user_comment, USER_TBL.name FROM (COMMENT_TBL JOIN GAME_TBL ON COMMENT_TBL.game_fk = GAME_TBL.ID) JOIN USER_TBL ON (COMMENT_TBL.user_fk = USER_TBL.ID)"
            DeleteCommand="DELETE FROM COMMENT_TBL WHERE ID=@ID"
            UpdateCommand="UPDATE COMMENT_TBL 
            SET user_comment=@user_comment, likes=@likes_comment
            WHERE (ID=@ID)">
        </asp:SqlDataSource>
        <asp:GridView ID="gvComments" runat="server" DataSourceID="srcComments" AllowSorting="False" >
            <Columns>
                
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>