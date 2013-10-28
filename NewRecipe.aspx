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
        AutoGenerateRows="False"
        DataSourceID="SqlDataSource1"
        DefaultMode="Insert"
        HeaderText="Add New Recipe"
        Gridlines="None"
        CssClass="cssdetailsview"
        HeaderStyle-CssClass="header"
        FieldHeaderStyle-CssClass="fieldheader"
        CommandRowStyle-CssClass="detailscmd"
    >
<FieldHeaderStyle CssClass="fieldheader"></FieldHeaderStyle>
        <Fields>
            <asp:TemplateField HeaderText="Recipe Name" SortExpression="recipeName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("recipeName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("recipeName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("recipeName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Submitted By" SortExpression="submittedBy">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("submittedBy") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("submittedBy") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("submittedBy") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ingredient #1" SortExpression="ingOne">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ingOne") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ingOne") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ingOne") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ingTwo" HeaderText="Ingredient #2" SortExpression="ingTwo" />
            <asp:BoundField DataField="ingThree" HeaderText="Ingredient #3" SortExpression="ingThree" />
            <asp:BoundField DataField="ingFour" HeaderText="Ingredient #4" SortExpression="ingFour" />
            <asp:BoundField DataField="ingFive" HeaderText="Ingredient #5" SortExpression="ingFive" />
            <asp:TemplateField HeaderText="Preparation" SortExpression="recipePrep">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("recipePrep") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Required" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("recipePrep") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*Required" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("recipePrep") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="recipeNotes" HeaderText="Notes" SortExpression="recipeNotes" />
            <asp:CommandField ShowInsertButton="True" ControlStyle-CssClass="detailscmd" />
        </Fields>

<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="detailspgr"></PagerStyle>
    </asp:DetailsView>
</asp:Content>

