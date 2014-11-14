<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestPage.aspx.cs" Inherits="EventTermProject.TestPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <h1> Methods Test Page</h1>
        </div>
        <hr />
        State*:
        <asp:DropDownList ID="ddlState" runat="server">
            <%--            <asp:ListItem>AL</asp:ListItem>
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
            <asp:ListItem>NE</asp:ListItem>--%>
            <asp:ListItem>NV</asp:ListItem>
            <%--            <asp:ListItem>NH</asp:ListItem>
            <asp:ListItem>NJ</asp:ListItem>
            <asp:ListItem>NM</asp:ListItem>
            <asp:ListItem>NY</asp:ListItem>
            <asp:ListItem>NC</asp:ListItem>
            <asp:ListItem>ND</asp:ListItem>
            <asp:ListItem>OH</asp:ListItem>
            <asp:ListItem>OK</asp:ListItem>
            <asp:ListItem>OR</asp:ListItem>--%>
            <asp:ListItem>PA</asp:ListItem>
            <%--            <asp:ListItem>RI</asp:ListItem>
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
            <asp:ListItem>WY</asp:ListItem>--%>
        </asp:DropDownList>
        &nbsp;City*:
        <asp:DropDownList ID="ddlCity" runat="server">
            <asp:ListItem>Las Vegas</asp:ListItem>
            <asp:ListItem>Philadelphia</asp:ListItem>
        </asp:DropDownList>
        &nbsp;Agency*:
        <asp:DropDownList ID="ddlAgency0" runat="server" AppendDataBoundItems="true">
            <asp:ListItem Value="">Select Agency</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnTestGetEvents" runat="server" Text="Test GetEvents" OnClick="btnTestGetEvents_Click" />
        <br />
        <br />
        <asp:GridView ID="gvEvents" runat="server">
        </asp:GridView>
        <br />

        <hr />

        State*: <asp:DropDownList ID="ddlState1" runat="server">
            <%--            <asp:ListItem>AL</asp:ListItem>
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
            <asp:ListItem>NE</asp:ListItem>--%>
            <asp:ListItem>NV</asp:ListItem>
            <%--            <asp:ListItem>NH</asp:ListItem>
            <asp:ListItem>NJ</asp:ListItem>
            <asp:ListItem>NM</asp:ListItem>
            <asp:ListItem>NY</asp:ListItem>
            <asp:ListItem>NC</asp:ListItem>
            <asp:ListItem>ND</asp:ListItem>
            <asp:ListItem>OH</asp:ListItem>
            <asp:ListItem>OK</asp:ListItem>
            <asp:ListItem>OR</asp:ListItem>--%>
            <asp:ListItem>PA</asp:ListItem>
            <%--            <asp:ListItem>RI</asp:ListItem>
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
            <asp:ListItem>WY</asp:ListItem>--%>
        </asp:DropDownList>
        &nbsp;City*:
        <asp:DropDownList ID="ddlCity1" runat="server">
            <asp:ListItem>Las Vegas</asp:ListItem>
            <asp:ListItem>Philadelphia</asp:ListItem>
        </asp:DropDownList>
        &nbsp;Time:
        <asp:DropDownList ID="ddlTime" runat="server">
            <asp:ListItem Value="">Select Time</asp:ListItem>
            <asp:ListItem>12:00 pm</asp:ListItem>
            <asp:ListItem>1:00 pm</asp:ListItem>
            <asp:ListItem>2:00 pm</asp:ListItem>
            <asp:ListItem>3:00 pm</asp:ListItem>
            <asp:ListItem>4:00 pm</asp:ListItem>
            <asp:ListItem>5:00 pm</asp:ListItem>
            <asp:ListItem>6:00 pm</asp:ListItem>
            <asp:ListItem>7:00 pm</asp:ListItem>
            <asp:ListItem>8:00 pm</asp:ListItem>
            <asp:ListItem>9:00 pm</asp:ListItem>
            <asp:ListItem>10:00 pm</asp:ListItem>
            <asp:ListItem>11:00 pm</asp:ListItem>
            <asp:ListItem>12:00 am</asp:ListItem>
        </asp:DropDownList>
        &nbsp;Day:
        <asp:DropDownList ID="ddlDay" runat="server">
            <asp:ListItem Value="">Select Day Of Week</asp:ListItem>
            <asp:ListItem>Sunday</asp:ListItem>
            <asp:ListItem Value="Monday">Monday</asp:ListItem>
            <asp:ListItem Value="Tuesday">Tuesday</asp:ListItem>
            <asp:ListItem Value="Wednesday">Wednesday</asp:ListItem>
            <asp:ListItem Value="Thursday">Thursday</asp:ListItem>
            <asp:ListItem Value="Friday">Friday</asp:ListItem>
            <asp:ListItem>Saturday</asp:ListItem>
        </asp:DropDownList>
        Event Type:
        <asp:DropDownList ID="ddlType" runat="server">
            <asp:ListItem Value="">Select Type of Event</asp:ListItem>

            <asp:ListItem>Party</asp:ListItem>
            <asp:ListItem>Show</asp:ListItem>
            <asp:ListItem>Tour</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;
        <asp:Button ID="btnFindEvents" runat="server" OnClick="btnFindEvents_Click" Text="Test Find Events" />
        <asp:GridView ID="gvEvents0" runat="server">
        </asp:GridView>
        <br />
        <br />

        <hr />
        State*:
        <asp:DropDownList ID="ddlState0" runat="server">
            <%--            <asp:ListItem>AL</asp:ListItem>
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
            <asp:ListItem>NE</asp:ListItem>--%>
            <asp:ListItem>NV</asp:ListItem>
            <%--            <asp:ListItem>NH</asp:ListItem>
            <asp:ListItem>NJ</asp:ListItem>
            <asp:ListItem>NM</asp:ListItem>
            <asp:ListItem>NY</asp:ListItem>
            <asp:ListItem>NC</asp:ListItem>
            <asp:ListItem>ND</asp:ListItem>
            <asp:ListItem>OH</asp:ListItem>
            <asp:ListItem>OK</asp:ListItem>
            <asp:ListItem>OR</asp:ListItem>--%>
            <asp:ListItem>PA</asp:ListItem>
            <%--            <asp:ListItem>RI</asp:ListItem>
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
            <asp:ListItem>WY</asp:ListItem>--%>
        </asp:DropDownList>
        &nbsp;City*:
        <asp:DropDownList ID="ddlCity0" runat="server">
            <asp:ListItem>Las Vegas</asp:ListItem>
            <asp:ListItem>Philadelphia</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;
        <asp:Button ID="btnGetAgencies" runat="server" OnClick="btnGetAgencies_Click" Text="Test Get Agencies" />
        <br />
        <asp:GridView ID="gvAgencies" runat="server">
        </asp:GridView>
        <br />
        <br />
        <hr />
        <asp:Button ID="btnAddReserve" runat="server" OnClick="btnAddReserve_Click" Text="Test Add Reservation" />
        (hard coded):
        <asp:Label ID="lblError" runat="server"></asp:Label>
        <br />
    </form>
</body>
</html>
