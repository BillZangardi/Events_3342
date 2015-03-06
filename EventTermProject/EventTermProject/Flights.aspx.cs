using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EventTermProject
{
    public partial class Flight : System.Web.UI.Page
    {
        FlightService1.AirService Flight1 = new FlightService1.AirService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                step2.Visible = false;
                btnAdd.Visible = false;
            }
        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            string cityOrigin = ddlCityO.SelectedValue;
            string stateOrigin = ddlStateO.SelectedValue;
            string cityDest = ddlCityDest.SelectedValue;
            string stateDest = ddlStateDest.SelectedValue;
            DataSet airCarr = Flight1.GetAirCarriers(cityOrigin, stateOrigin, cityDest, stateDest);

            ddlCarrier.DataSource = airCarr;
            ddlCarrier.DataTextField = "carrierName";
            ddlCarrier.DataValueField = "carrierID";
            ddlCarrier.DataBind();

            step2.Visible = true;

           
        }

        protected void btnSearchByCarrier_Click(object sender, EventArgs e)
        {
            string cityOrigin = ddlCityO.SelectedValue;
            string stateOrigin = ddlStateO.SelectedValue;
            string cityDest = ddlCityDest.SelectedValue;
            string stateDest = ddlStateDest.SelectedValue;

            int carrierID = int.Parse(ddlCarrier.SelectedValue);



            DataSet airCarr = Flight1.GetFlights(carrierID, cityOrigin, stateOrigin, cityDest, stateDest);

            gvFlights.DataSource = airCarr;
            gvFlights.DataBind();


            for (int i = 0; i < gvFlights.Rows.Count; i++)
            {
                CheckBox tempCheck = (CheckBox)gvFlights.Rows[i].FindControl("chkSelect");
                tempCheck.Enabled = false;
            }


        }

        protected void btnSearchByReqs_Click(object sender, EventArgs e)
        {
            string cityOrigin = ddlCityO.SelectedValue;
            string stateOrigin = ddlStateO.SelectedValue;
            string cityDest = ddlCityDest.SelectedValue;
            string stateDest = ddlStateDest.SelectedValue;

            string reqs = ddlReqs.SelectedValue;
            string[] requirements = new String[] {reqs};

            DataSet flights = Flight1.FindFlights(requirements, cityOrigin, stateOrigin, cityDest, stateDest);
            gvFlights.DataSource = flights;
            gvFlights.DataBind();

            btnAdd.Visible = true;

            for (int i = 0; i < gvFlights.Rows.Count; i++)
            {
                CheckBox tempCheck = (CheckBox)gvFlights.Rows[i].FindControl("chkSelect");
                tempCheck.Enabled = true;
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            VacationPackage vacation;
            //retrieve session object
            if (Session["VacationPackage"] != null)
            {
                vacation = (VacationPackage)Session["VacationPackage"];
            }
            else
            {
                vacation = new VacationPackage();
            }

            //add the selected flights to the flight array
            int countChecked = 0;
    

            for (int i = 0; i < gvFlights.Rows.Count; i++)
            {
                CheckBox tempCheck = (CheckBox)gvFlights.Rows[i].FindControl("chkSelect");
                

                if (tempCheck.Checked)
                {
                    countChecked++;

                    try
                    {
                        //if validated create an arraylist of flights and add them to the vacation package.
                        FlightObject flight = new FlightObject();
                        flight.FlightID = int.Parse(gvFlights.Rows[i].Cells[1].Text);
                        flight.CarrierName = gvFlights.Rows[i].Cells[2].Text;
                        flight.SeatType = ddlCarrier.SelectedValue;
                        flight.Price = Convert.ToDouble(gvFlights.Rows[i].Cells[6].Text);
                  
                        //add a flight to the arraylist
                        vacation.flights.Add(flight);
                        lblInputValidation.Text = countChecked.ToString() + " Flights were added to your Vacation Package, totaling " + vacation.flights.Count.ToString() + " flights";

                    }
                    catch (Exception ex)
                    {
                        lblInputValidation.Text = "Error: Could not add flight to your Vacation Package";

                        return;
                    }

                }

            }

            if (countChecked == 0)
            {
                lblInputValidation.Text = "Error: Please select at least one flight to add to your Vacation Package";
            }

            //set the object into session
            Session["VacationPackage"] = vacation;

        }
        }
    }
