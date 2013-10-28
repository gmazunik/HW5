<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="Recipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_RecipeSite %>" SelectCommand="SELECT * FROM [recipe] WHERE ([recipeID] = @recipeID)" DeleteCommand="DELETE FROM [recipe] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [recipe] ([recipeName], [submittedBy], [ingOne], [ingTwo], [ingThree], [ingFour], [ingFive], [recipePrep], [recipeNotes]) VALUES (@recipeName, @submittedBy, @ingOne, @ingTwo, @ingThree, @ingFour, @ingFive, @recipePrep, @recipeNotes)" UpdateCommand="UPDATE [recipe] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [ingOne] = @ingOne, [ingTwo] = @ingTwo, [ingThree] = @ingThree, [ingFour] = @ingFour, [ingFive] = @ingFive, [recipePrep] = @recipePrep, [recipeNotes] = @recipeNotes WHERE [recipeID] = @recipeID">
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
        <SelectParameters>
            <asp:QueryStringParameter Name="recipeID" QueryStringField="recipeID" Type="Int32" />
        </SelectParameters>
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
    <asp:DetailsView
        ID="DetailsView1"
        runat="server"
        Height="50px"
        Width="125px"
        AutoGenerateRows="False"
        DataSourceID="SqlDataSource1"
        DefaultMode="Insert"
        Gridlines="None"
        CssClass="cssdetailsview"
        PagerStyle-CssClass="pgr"
    >
        <Fields>
            <asp:BoundField DataField="recipeName" HeaderText="Recipe Name" SortExpression="recipeName" />
            <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
            <asp:BoundField DataField="ingOne" HeaderText="Ingredient #1" SortExpression="ingOne" />
            <asp:BoundField DataField="ingTwo" HeaderText="Ingredient #2" SortExpression="ingTwo" />
            <asp:BoundField DataField="ingThree" HeaderText="Ingredient #3" SortExpression="ingThree" />
            <asp:BoundField DataField="ingFour" HeaderText="Ingredient #4" SortExpression="ingFour" />
            <asp:BoundField DataField="ingFive" HeaderText="Ingredient #5" SortExpression="ingFive" />
            <asp:BoundField DataField="recipePrep" HeaderText="Preparation" SortExpression="recipePrep" />
            <asp:BoundField DataField="recipeNotes" HeaderText="Notes" SortExpression="recipeNotes" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

