<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="EventTermProject.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Shop Packages</h1>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="row">
    <asp:Button ID="btnCars" runat="server" CssClass="btn btn-theme col-lg-4 col-lg-offset-4" Text="Cars" OnClick="btnCars_Click"/>
</div>
<div class="row">
    <div style="width:100%; height:6px;"></div>
</div>
<div class="row">
    <asp:Button ID="btnFlights" runat="server" CssClass="btn btn-theme col-lg-4 col-lg-offset-4" Text="Flights" OnClick="btnFlights_Click"/>
</div>
<div class="row">
    <div style="width:100%; height:6px;"></div>
</div>
<div class="row">
    <asp:Button ID="btnEvents" runat="server" CssClass="btn btn-theme col-lg-4 col-lg-offset-4" Text="Events" OnClick="btnEvents_Click"/>
</div>
<div class="row">
    <div style="width:100%; height:6px;"></div>
</div>
<div class="row">
    <asp:Button ID="btnHotels" runat="server" CssClass="btn btn-theme col-lg-4 col-lg-offset-4" Text="Hotels" OnClick="btnHotels_Click"/>
</div>
</asp:Content>
