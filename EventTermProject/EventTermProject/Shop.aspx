<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="EventTermProject.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Shop Packages</h1>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Button ID="btnCars" runat="server" CssClass="btn btn-theme" Text="Cars" OnClick="btnCars_Click"/><br />
        <asp:Button ID="btnFlights" runat="server" CssClass="btn btn-theme" Text="Flights" OnClick="btnFlights_Click"/><br />
        <asp:Button ID="btnEvents" runat="server" CssClass="btn btn-theme" Text="Events" OnClick="btnEvents_Click"/><br />
        <asp:Button ID="btnHotels" runat="server" CssClass="btn btn-theme" Text="Hotels" OnClick="btnHotels_Click"/><br />
</asp:Content>
