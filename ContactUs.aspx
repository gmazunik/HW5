<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Your Email Address:"></asp:Label>
    <br />
    <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Your Message:"></asp:Label>
    <br />
    <asp:TextBox ID="tbMessage" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Send Message" />
    <br />
</asp:Content>

