<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="EventTermProject.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Vacation Package</h1>
    <asp:Label ID="lblWelcome" runat="server">View items added to your cart and checkout</asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblCartItems" runat="server"></asp:Label>
    <br />
    <asp:Button ID="btnCheckout" runat="server" OnClick="btnCheckout_Click" Text="Checkout" /><asp:Button ID="btnClearCart" runat="server" Text="Clear Cart" OnClick="btnClearCart_Click" />
    <br />
    <asp:Label ID="lblSuccess" runat="server"></asp:Label>
    <asp:Label ID="lblTotal" runat="server" Text="Label" Visible="False"></asp:Label>
</asp:Content>
