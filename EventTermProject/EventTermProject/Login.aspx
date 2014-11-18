<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EventTermProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Login</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group col-lg-4 col-lg-offset-4">
        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-lg-4 col-lg-offset-4">
        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtPassword" TextMode="password" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="col-lg-4 col-lg-offset-4">
        <asp:CheckBox ID="chkRememberMe" runat="server" Text="Remember Me" />
        <br />
        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-theme" Text="Submit" OnClick="btnSubmit_Click"/><br />
        <asp:Label ID="lblError" runat="server" Text=""></asp:Label><br />
        <asp:Button ID="btnSignUp" runat="server" CssClass="btn btn-theme" Text="Sign Up" OnClick="btnSignUp_Click"/><br />
    </div>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br /><br />
</asp:Content>
