using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EventTermProject
{
    public partial class Cars : System.Web.UI.Page
    {
        DataSet agencies;
        CarService.CarService Car = new CarService.CarService();


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
            string city = ddlCity.SelectedValue;
            string state = ddlState.SelectedValue;
            agencies = Car.GetRentalCarAgencies(city, state);
            ddlAgency.DataSource = agencies;
            ddlAgency.DataTextField = "name";
            ddlAgency.DataValueField = "name";
            ddlAgency.DataBind();

            step2.Visible = true;
            //step1.Visible = false;

        }

        protected void btnSearchByAgency_Click(object sender, EventArgs e)
        {
            string city = ddlCity.SelectedValue;
            string state = ddlState.SelectedValue;
            agencies = Car.GetRentalCarAgencies(city, state);

            //define an agency object based on the selected agency from ddlAgency
            //for use in GetCars
            CarService.Agency agency = new CarService.Agency();
            agency.agencyID = (int)agencies.Tables[0].Rows[ddlAgency.SelectedIndex]["agencyID"];
            agency.name = ddlAgency.SelectedValue;
            agency.phone = (string)agencies.Tables[0].Rows[ddlAgency.SelectedIndex]["phone"];
            agency.email = (string)agencies.Tables[0].Rows[ddlAgency.SelectedIndex]["email"];
            agency.city = (string)agencies.Tables[0].Rows[ddlAgency.SelectedIndex]["city"];
            agency.state = (string)agencies.Tables[0].Rows[ddlAgency.SelectedIndex]["state"];

            DataSet cars = Car.GetCars(agency, city, state);
            //ddlCarClass.Items.Clear();
            //ddlType.Items.Clear();


            gvCars.DataSource = cars;
            gvCars.DataBind();

            btnAdd.Visible = true;



        }

        protected void btnSearchByReqs_Click(object sender, EventArgs e)
        {
            string city = ddlCity.SelectedValue;
            string state = ddlState.SelectedValue;

            CarService.Requirements requirements = new CarService.Requirements();
            string gps = "no";
            if (chkGPS.Checked)
            {
                gps = "yes";
            }
            string electric = "no";
            if (chkElectric.Checked)
            {
                electric = "yes";
            }


            requirements.gps = gps;
            requirements.type = ddlType.SelectedValue;
            requirements.carClass = ddlCarClass.SelectedValue;
            requirements.electric = electric;
            requirements.passengers = int.Parse(ddlPassengers.SelectedValue);
            requirements.luggage = int.Parse(ddlLuggage.SelectedValue);
            requirements.doors = int.Parse(ddlDoors.SelectedValue);
            if (txtMileage.Text == "")
            {
                requirements.mileage = 999999999;
            }
            else
            {
                requirements.mileage = int.Parse(txtMileage.Text);
            }
            if (txtPrice.Text == "")
            {
                requirements.price = 999999999999999999;
            }
            else
            {
                requirements.price = float.Parse(txtPrice.Text);
            }

            DataSet findCars = Car.FindCars(requirements, city, state);
            gvCars.DataSource = findCars;
            gvCars.DataBind();


            btnAdd.Visible = true;

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            VacationPackage vacation;
            //retrieve session vacationpackage object
            if (Session["VacationPackage"] != null)
            {
                vacation = (VacationPackage)Session["VacationPackage"];
            }
            else
            {
                vacation = new VacationPackage();
            }

            //add the selected cars to the car array
            int countChecked = 0;
    

            for (int i = 0; i < gvCars.Rows.Count; i++)
            {
                CheckBox tempCheck = (CheckBox)gvCars.Rows[i].FindControl("chkSelect");

                if (tempCheck.Checked)
                {
                    countChecked++;

                    try
                    {
                        //if validated create an arraylist of cars and add them to the vacation package.
                        CarService.Car car = new CarService.Car();
                        car.carID = int.Parse(gvCars.Rows[i].Cells[1].Text);
                        car.make = (gvCars.Rows[i].Cells[2].Text);
                        car.model = (gvCars.Rows[i].Cells[3].Text);
                        car.year = (gvCars.Rows[i].Cells[4].Text);
                        car.price = int.Parse(gvCars.Rows[i].Cells[7].Text);
                        car.gps = (gvCars.Rows[i].Cells[8].Text);
                        car.type = (gvCars.Rows[i].Cells[9].Text);
                        car.carClass = gvCars.Rows[i].Cells[10].Text;
                        car.electric = gvCars.Rows[i].Cells[11].Text;
                        car.passengers = int.Parse(gvCars.Rows[i].Cells[12].Text);
                        car.luggage = int.Parse(gvCars.Rows[i].Cells[13].Text);
                        car.doors = int.Parse(gvCars.Rows[i].Cells[14].Text);
                        car.mileage = int.Parse(gvCars.Rows[i].Cells[15].Text);

                        //add a car to the arraylist
                        vacation.cars.Add(car);
                        lblInputValidation.Text = countChecked.ToString() + " Cars were added to your Vacation Package, totaling " + vacation.cars.Count.ToString() + " cars";

                    }
                    catch (Exception ex)
                    {
                        lblInputValidation.Text = "Error: Could not add car to your cart";

                        return;
                    }

                }

            }

            if (countChecked == 0)
            {
                lblInputValidation.Text = "Error: Please select at least one car to add to your Vacation Package";
            }

            //set the object into session
            Session["VacationPackage"] = vacation;

        }
    }
}
