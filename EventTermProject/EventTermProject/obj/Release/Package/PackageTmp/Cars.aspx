<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="EventTermProject.Cars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Cars</h1>
    <asp:Label ID="lblWelcome" runat="server">Find a car to add to your vacation package</asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div runat="server" id="step1">
        Select a Location<br />
        <br />
        State:
        <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control">
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
        <asp:DropDownList ID="ddlCity" runat="server" CssClass="form-control">
            <asp:ListItem>Las Vegas</asp:ListItem>
            <asp:ListItem>Philadelphia</asp:ListItem>
        </asp:DropDownList>

        <asp:Button ID="btnGo" runat="server" OnClick="btnGo_Click" Text="Go" />

        <br />
        <hr />
    </div>
    <div class="row">
    <div runat="server" id="step2" class="row">
        <div class="col-lg-5">
            Find by Agency<br />
            <br />
            <asp:DropDownList ID="ddlAgency" runat="server">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btnSearchByAgency" runat="server" Text="Search" OnClick="btnSearchByAgency_Click" />
            <br />

        </div>

        <div class="col-lg-2">
            <b>-OR-</b>
        </div>
        <div class="col-lg-5">
            Find by Specifying Requirements
        <br />
</div>
<div class="row">
            <br />
          <span class="col-lg-2 col-lg-offset-7">  Type:</span>
    <asp:DropDownList ID="ddlType" CssClass="col-lg-4 col-lg-offset-7" runat="server">
        <asp:ListItem>Minivan</asp:ListItem>
        <asp:ListItem>Super sports</asp:ListItem>
        <asp:ListItem>Sports</asp:ListItem>
        <asp:ListItem>Sedan</asp:ListItem>
        <asp:ListItem>SUV</asp:ListItem>
    </asp:DropDownList>

          <span class="col-lg-2 col-lg-offset-7">  Class:</span>
    <asp:DropDownList ID="ddlCarClass" CssClass="col-lg-4 col-lg-offset-7" runat="server">
        <asp:ListItem>Sports</asp:ListItem>
        <asp:ListItem>Standard</asp:ListItem>
        <asp:ListItem>Minivan</asp:ListItem>
        <asp:ListItem>Sport luxury</asp:ListItem>
        <asp:ListItem>Sport</asp:ListItem>
        <asp:ListItem>Standard</asp:ListItem>
        <asp:ListItem>Luxury SUV</asp:ListItem>

    </asp:DropDownList>


          <span class="col-lg-2 col-lg-offset-7">  Doors:</span>
    <asp:DropDownList ID="ddlDoors" CssClass="col-lg-4 col-lg-offset-7" runat="server">
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:DropDownList>
            <br />
            <br />

           <span class="col-lg-2 col-lg-offset-7"> Passengers:</span>
    <asp:DropDownList ID="ddlPassengers" CssClass="col-lg-4 col-lg-offset-7" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
    </asp:DropDownList>


           <span class="col-lg-2 col-lg-offset-7"> Luggage:</span>
    <asp:DropDownList ID="ddlLuggage" CssClass="col-lg-4 col-lg-offset-7" runat="server">
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

           <span class="col-lg-2 col-lg-offset-7"> (Check for "Yes"):  </span> 
    <asp:CheckBox ID="chkGPS" runat="server" Text="GPS" CssClass="col-lg-4 col-lg-offset-7"/>

            <asp:CheckBox ID="chkElectric" runat="server" Text="Electric" CssClass="col-lg-4 col-lg-offset-7" />
            <br />

            <br />
           <span class="col-lg-2 col-lg-offset-7"> Max Mileage:</span>
    <asp:TextBox ID="txtMileage" runat="server" CssClass="col-lg-4 col-lg-offset-7"></asp:TextBox>

            <br />
            <br />

    <span class="col-lg-2 col-lg-offset-7"> price:</span>
    <asp:TextBox ID="txtPrice" runat="server" CssClass="col-lg-4 col-lg-offset-7"></asp:TextBox>
            <br />
            <br />
    <span class="col-lg-2 col-lg-offset-7">&nbsp; </span> 
    <div style="width:100%; height:15px">
            <asp:Button ID="btnSearchByReqs" runat="server" CssClass="col-lg-2 col-lg-offset-8" Text="Search" OnClick="btnSearchByReqs_Click" />
        </div>
            <br />
</div></div>
        
        <hr />
            <br />
            <asp:GridView ID="gvCars" runat="server" CssClass="table table-bordered table-hover" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkSelect" runat="server" EnableTheming="True" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="carID" HeaderText="Car ID" />
                    <asp:BoundField DataField="make" HeaderText="Make" />
                    <asp:BoundField DataField="model" HeaderText="Model" />
                    <asp:BoundField DataField="year" HeaderText="Year" />
                    <asp:BoundField DataField="city" HeaderText="City" />
                    <asp:BoundField DataField="state" HeaderText="State" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:BoundField DataField="gps" HeaderText="GPS" />
                    <asp:BoundField DataField="type" HeaderText="Type" />
                    <asp:BoundField DataField="class" HeaderText="Class" />
                    <asp:BoundField DataField="electric" HeaderText="Electric" />
                    <asp:BoundField DataField="passengers" HeaderText="Passengers" />
                    <asp:BoundField DataField="luggage" HeaderText="Luggage" />
                    <asp:BoundField DataField="doors" HeaderText="Doors" />
                    <asp:BoundField DataField="mileage" HeaderText="Mileage" />
                    <asp:BoundField DataField="agencyID" HeaderText="Agency ID" />
                </Columns>
            </asp:GridView>


            <br />
          <asp:Button ID="btnAdd" runat="server" Text="Add to Vacation Package" OnClick="btnAdd_Click" />
            <asp:Label ID="lblInputValidation" runat="server"></asp:Label>
            <br />

    </div>

</asp:Content>
