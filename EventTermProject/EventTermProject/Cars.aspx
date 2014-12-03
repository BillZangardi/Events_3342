<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="EventTermProject.Cars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Cars</h1>
    <asp:Label ID="lblWelcome" runat="server">Find a car to add to your vacation package</asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div runat="server" id="step1">
        Step 1: Select a Location<br />
        State:
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
        &nbsp;City:
        <asp:DropDownList ID="ddlCity" runat="server">
            <asp:ListItem>Las Vegas</asp:ListItem>
            <asp:ListItem>Philadelphia</asp:ListItem>
        </asp:DropDownList>

        <asp:Button ID="btnGo" runat="server" OnClick="btnGo_Click" Text="Go" />

        <br />
        <hr />
    </div>
    <div runat="server" id="step2">
        Step 2: Select an Agency<br />
        <asp:DropDownList ID="ddlAgency" runat="server">
        </asp:DropDownList>
        <asp:Button ID="btnGo2" runat="server" Text="Go" OnClick="btnGo2_Click" />
        <br />
        <hr />
    </div>
    <div runat="server" id="step3">
        Step 3: Specify Requirements
        <br />
        <br />
        Type:
    <asp:DropDownList ID="ddlType" runat="server">
    </asp:DropDownList>

        Class:
    <asp:DropDownList ID="ddlCarClass" runat="server">
    </asp:DropDownList>


        Doors:
    <asp:DropDownList ID="ddlDoors" runat="server">
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
    </asp:DropDownList>
        <br />
        <br />

        Passengers:
    <asp:DropDownList ID="ddlPassengers" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
    </asp:DropDownList>


        Luggage:
    <asp:DropDownList ID="ddlLuggage" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
    </asp:DropDownList>
        <br />
        <br />

        (Check for "Yes"):   
    <asp:CheckBox ID="chkGPS" runat="server" Text="GPS       " />

        <asp:CheckBox ID="chkElectric" runat="server" Text="Electric" />
        <br />

        <br />
        Max Mileage:
    <asp:TextBox ID="txtMileage" runat="server"></asp:TextBox>

        <br />
        <br />

        Max price:
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>

        <br />
    

    <br />
    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
    <br />

    <br />
    <asp:GridView ID="gvCars" runat="server">
    </asp:GridView>
    <br />

        </div>




</asp:Content>
