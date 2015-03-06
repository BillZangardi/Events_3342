<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Flights.aspx.cs" Inherits="EventTermProject.Flight" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Flights</h1>
    <asp:Label ID="lblWelcome" runat="server">Select a flight to add to your vacation package</asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div runat="server" id="step1">
        Select an Origin and Destination<br />
        <br />
        Origin State:
        <asp:DropDownList ID="ddlStateO" runat="server" CssClass="form-control">
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
            <asp:ListItem>PA</asp:ListItem>
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
        &nbsp;Origin City:
        <asp:DropDownList ID="ddlCityO" runat="server" CssClass="form-control">
            <asp:ListItem>Philadelphia</asp:ListItem>
            <asp:ListItem>Las Vegas</asp:ListItem>
            
        </asp:DropDownList>
        <br />

        Destination State:
        <asp:DropDownList ID="ddlStateDest" runat="server" CssClass="form-control">
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
        &nbsp;Destination City:
        <asp:DropDownList ID="ddlCityDest" runat="server" CssClass="form-control">
            <asp:ListItem>Las Vegas</asp:ListItem>
            <asp:ListItem>Philadelphia</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnGo" runat="server" OnClick="btnGo_Click" Text="Go" />

        <br />
        <hr />
    </div>



    <div runat="server" id="step2" class="row">
        <div class="col-lg-5">
            Find by Carrier<br />
            <br />
            <asp:DropDownList ID="ddlCarrier" runat="server">
            </asp:DropDownList>
            <asp:Button ID="btnSearchByCarrier" runat="server" Text="Search" OnClick="btnSearchByCarrier_Click" />
            <br />
            <br />
        </div>


        <div class="col-lg-2">
            <b>-OR-</b>
        </div>
        <div class="col-lg-5">
            Find by Specifying Requirements
        <br />
            <br />
            Type:
    <asp:DropDownList ID="ddlReqs" runat="server">
        <asp:ListItem>Economy</asp:ListItem>
        <asp:ListItem>First Class</asp:ListItem>
    </asp:DropDownList>


            <asp:Button ID="btnSearchByReqs" runat="server" Text="Search" OnClick="btnSearchByReqs_Click" />
            <br />
            <br />

        </div>
        <br />
        <hr />
        <div class="col-lg-12">
            <asp:GridView ID="gvFlights" runat="server" CssClass="table-bordered table">
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkSelect" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:Button ID="btnAdd" runat="server" Text="Add to Vacation Package" OnClick="btnAdd_Click" />
            <asp:Label ID="lblInputValidation" runat="server"></asp:Label>
            <br />

        </div>

    </div>

</asp:Content>
