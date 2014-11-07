<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestPage.aspx.cs" Inherits="EventTermProject.TestPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:DropDownList ID="ddlAgency" runat="server">
        </asp:DropDownList>
        <br />
        <asp:DropDownList ID="ddlState" runat="server">
            <asp:ListItem Value="1">state</asp:ListItem>
            <asp:ListItem>AL</asp:ListItem>
            <asp:ListItem>AK</asp:ListItem>
            <asp:ListItem>AZ</asp:ListItem>
            <asp:ListItem>AR</asp:ListItem>
            <asp:ListItem>CA</asp:ListItem>
            <asp:ListItem>CO</asp:ListItem>
            <asp:ListItem>CT</asp:ListItem>
            <asp:ListItem>DE</asp:ListItem>
            <asp:ListItem>FL</asp:ListItem>
            <asp:ListItem>GA</asp:ListItem>
            <asp:ListItem>HI</asp:ListItem>
            <asp:ListItem>ID</asp:ListItem>
            <asp:ListItem>IL</asp:ListItem>
            <asp:ListItem>IN</asp:ListItem>
            <asp:ListItem>IA</asp:ListItem>
            <asp:ListItem>KS</asp:ListItem>
            <asp:ListItem>KY</asp:ListItem>
            <asp:ListItem>LA</asp:ListItem>
            <asp:ListItem>ME</asp:ListItem>
            <asp:ListItem>MD</asp:ListItem>
            <asp:ListItem>MA</asp:ListItem>
            <asp:ListItem>MI</asp:ListItem>
            <asp:ListItem>MN</asp:ListItem>
            <asp:ListItem>MS</asp:ListItem>
            <asp:ListItem>MO</asp:ListItem>
            <asp:ListItem>MT</asp:ListItem>
            <asp:ListItem>NE</asp:ListItem>
            <asp:ListItem>NV</asp:ListItem>
            <asp:ListItem>NH</asp:ListItem>
            <asp:ListItem>NJ</asp:ListItem>
            <asp:ListItem>NM</asp:ListItem>
            <asp:ListItem>NY</asp:ListItem>
            <asp:ListItem>NC</asp:ListItem>
            <asp:ListItem>ND</asp:ListItem>
            <asp:ListItem>OH</asp:ListItem>
            <asp:ListItem>OK</asp:ListItem>
            <asp:ListItem>OR</asp:ListItem>
            <asp:ListItem>PA</asp:ListItem>
            <asp:ListItem>RI</asp:ListItem>
            <asp:ListItem>SC</asp:ListItem>
            <asp:ListItem>SD</asp:ListItem>
            <asp:ListItem>TN</asp:ListItem>
            <asp:ListItem>TX</asp:ListItem>
            <asp:ListItem>UT</asp:ListItem>
            <asp:ListItem>VT</asp:ListItem>
            <asp:ListItem>VA</asp:ListItem>
            <asp:ListItem>WA</asp:ListItem>
            <asp:ListItem>WV</asp:ListItem>
            <asp:ListItem>WI</asp:ListItem>
            <asp:ListItem>WY</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnTestGetEvents" runat="server" Text="Test GetEvents" />
        <br />
        <br />
        <asp:Label ID="lblResults2" runat="server"></asp:Label>
    </form>
</body>
</html>
