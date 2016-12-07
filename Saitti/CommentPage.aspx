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
            DeleteCommand="DELETE FROM COMMENT_TBL WHERE ID=@ID"
            UpdateCommand="UPDATE COMMENT_TBL 
            SET user_comment=@user_comment
            WHERE (ID=@ID)">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="srcDataSQLGames" runat="server"
            ConnectionString="<%$ ConnectionStrings:DataSQL %>"
            ProviderName="MySql.Data.MySqlClient"
            SelectCommand="SELECT * FROM GAME_TBL">
        </asp:SqlDataSource>
        <h2>Anna uusi kommentti</h2>
        <asp:DropDownList ID="PelinValinta" AutoPostBack="false" runat="server">
            <asp:ListItem Text="<Select Subject>" Value="0" />
        </asp:DropDownList>
        <asp:Textbox ID="Kommentti" style="Z-INDEX: 101; LEFT: 56px; OVERFLOW: hidden; POSITION: absolute; TOP: 72px" runat="server" TextMode="MultiLine"></asp:Textbox>
        <asp:Button ID="UusiKommentti" runat="server" Text="Jukaise uusi kommentti" OnClick="UusiKommentti_Click" />

        <h2>Kaikki kirjoittamasi kommentit</h2>
        <asp:GridView ID="gvComment" runat="server" DataSourceID="srcDataSQL" AllowSorting="True" >
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        </div>
</asp:Content>

