<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="EventTermProject.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3>Sales Report</h3>
    <asp:Label ID="lblTotalSales" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblTotalOrders" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblOrders" runat="server" Text=""></asp:Label>
</asp:Content>
