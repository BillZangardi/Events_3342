<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="EventTermProject.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Shop Events</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="row">
     <div class="form-group col-lg-4 col-lg-offset-2">
        <asp:Label ID="Label3" runat="server" Text="City"></asp:Label>
        <asp:TextBox ID="txtCity" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-lg-4">
        <asp:Label ID="Label4" runat="server" Text="State"></asp:Label>
        <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control">
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
    </div>
</div>
<div class="row">
    <div class="form-group col-lg-4 col-lg-offset-2">
        <asp:DropDownList CssClass="form-control" ID="ddlTime" runat="server">
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
    </div>
    <div class="form-group col-lg-4">
        <asp:DropDownList ID="ddlDay" CssClass="form-control" runat="server">
            <asp:ListItem Value="">Select Day Of Week</asp:ListItem>
            <asp:ListItem>Sunday</asp:ListItem>
            <asp:ListItem Value="Monday">Monday</asp:ListItem>
            <asp:ListItem Value="Tuesday">Tuesday</asp:ListItem>
            <asp:ListItem Value="Wednesday">Wednesday</asp:ListItem>
            <asp:ListItem Value="Thursday">Thursday</asp:ListItem>
            <asp:ListItem Value="Friday">Friday</asp:ListItem>
            <asp:ListItem>Saturday</asp:ListItem>
        </asp:DropDownList>
    </div>
</div>
<div class="row">
    <div class="form-group col-lg-4 col-lg-offset-4">
        <asp:DropDownList ID="ddlType" CssClass="form-control" runat="server">
            <asp:ListItem Value="">Select Type of Event</asp:ListItem>

            <asp:ListItem>Party</asp:ListItem>
            <asp:ListItem>Show</asp:ListItem>
            <asp:ListItem>Tour</asp:ListItem>
        </asp:DropDownList>
    </div>
</div>
<div class="row">
    <div class="col-lg-4 col-lg-offset-4">
        <asp:Button ID="btnSearchEvents" runat="server" CssClass="btn btn-theme btn-primary" Text="Search" OnClick="btnSearchEvents_Click"/><br />
        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
    </div>
</div>
<div class="row">
    <div style="width:100%; height:6px;"></div>
</div>
<div class="row">
    <div class="col-lg-12">
        <asp:GridView ID="gvEvents" CssClass="table table-bordered table-hover" runat="server" AutoGenerateColumns="False" Width="100%">
            <Columns>
                <asp:BoundField DataField="eventID" HeaderText="ID" Visible="false" />
                <asp:BoundField DataField="eventName" HeaderText="Event" />
                <asp:BoundField DataField="eventType" HeaderText="Type" />
                <asp:BoundField DataField="eventDay" HeaderText="Day" />
                <asp:BoundField DataField="eventTime" HeaderText="Time" />
                <asp:BoundField DataField="eventCity" HeaderText="City" />
                <asp:BoundField DataField="eventState" HeaderText="State" />
                <asp:BoundField DataField="eventPrice" HeaderText="Price" />
                <asp:TemplateField HeaderText="Add to Cart">
                    <ItemTemplate>
                        <asp:Button ID="btnAddToCart" runat="server" CssClass="btn-primary" Text="Add" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</div>
</asp:Content>