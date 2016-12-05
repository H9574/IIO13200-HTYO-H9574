<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CommentPage.aspx.cs" Inherits="CommentPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h1>Kommenttisi</h1>
    <div class="w3-row">
        <!-- KOMMENTTIEN haku -->


        <asp:SqlDataSource ID ="srcDataSQL" runat="server"
            ConnectionString="<%$ ConnectionStrings:DataSQL %>"
            ProviderName="MySql.Data.MySqlClient"
            SelectCommand="SELECT GAME_TBL.game, COMMENT_TBL.user_comment 
            FROM COMMENT_TBL
            INNER JOIN GAME_TBL
            ON COMMENT_TBL.game_fk=GAME_TBL.ID"
            DeleteCommand="DELETE FROM COMMENT_TBL WHERE ID=@ID"
            UpdateCommand="UPDATE COMMENT_TBL 
            SET user_comment=@user_comment
            WHERE (ID=@ID)">
        </asp:SqlDataSource>

        <h2>Kaikki kirjoittamasi kommentit</h2>
        <asp:GridView ID="gvComment" runat="server" DataSourceID="srcDataSQL" AllowSorting="True" >
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        </div>
</asp:Content>

