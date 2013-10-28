<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_RecipeSite %>" SelectCommand="SELECT * FROM [recipe]" DeleteCommand="DELETE FROM [recipe] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [recipe] ([recipeName], [submittedBy], [ingOne], [ingTwo], [ingThree], [ingFour], [ingFive], [recipePrep], [recipeNotes]) VALUES (@recipeName, @submittedBy, @ingOne, @ingTwo, @ingThree, @ingFour, @ingFive, @recipePrep, @recipeNotes)" UpdateCommand="UPDATE [recipe] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [ingOne] = @ingOne, [ingTwo] = @ingTwo, [ingThree] = @ingThree, [ingFour] = @ingFour, [ingFive] = @ingFive, [recipePrep] = @recipePrep, [recipeNotes] = @recipeNotes WHERE [recipeID] = @recipeID">
        <DeleteParameters>
            <asp:Parameter Name="recipeID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="recipeName" Type="String" />
            <asp:Parameter Name="submittedBy" Type="String" />
            <asp:Parameter Name="ingOne" Type="String" />
            <asp:Parameter Name="ingTwo" Type="String" />
            <asp:Parameter Name="ingThree" Type="String" />
            <asp:Parameter Name="ingFour" Type="String" />
            <asp:Parameter Name="ingFive" Type="String" />
            <asp:Parameter Name="recipePrep" Type="String" />
            <asp:Parameter Name="recipeNotes" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="recipeName" Type="String" />
            <asp:Parameter Name="submittedBy" Type="String" />
            <asp:Parameter Name="ingOne" Type="String" />
            <asp:Parameter Name="ingTwo" Type="String" />
            <asp:Parameter Name="ingThree" Type="String" />
            <asp:Parameter Name="ingFour" Type="String" />
            <asp:Parameter Name="ingFive" Type="String" />
            <asp:Parameter Name="recipePrep" Type="String" />
            <asp:Parameter Name="recipeNotes" Type="String" />
            <asp:Parameter Name="recipeID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <asp:GridView
        ID="GridView1"
        runat="server"
        DataSourceID="SqlDataSource1"
        AllowPaging="True"
        AllowSorting="True"
        AutoGenerateColumns="False"
        DataKeyNames="recipeID"
        Gridlines="None"
        CssClass="cssgridview"
        PagerStyle-CssClass="pgr"
    >
        <Columns>
            <asp:BoundField DataField="recipeName" HeaderText="Recipe Name" SortExpression="recipeName" />
            <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
            <asp:HyperLinkField DataNavigateUrlFields="recipeID" DataNavigateUrlFormatString="Recipe.aspx?recipeID={0}" Text="Select" />
        </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
    </asp:GridView>


</asp:Content>

