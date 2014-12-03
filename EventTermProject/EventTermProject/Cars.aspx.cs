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

        }

        protected void btnGo2_Click(object sender, EventArgs e)
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
            ddlCarClass.Items.Clear();
            ddlType.Items.Clear();
            //populate dropdown with only a single entry for each car class
            for (int i = 0; i < cars.Tables[0].Rows.Count; i++)
            {
                if (i == 0)
                {
                    ddlCarClass.Items.Add(new ListItem((string)cars.Tables[0].Rows[i]["class"], (string)cars.Tables[0].Rows[i]["class"]));
                }
                else
                {
                    bool exists = false;
                    for (int j = 0; j < ddlCarClass.Items.Count; j++)
                    {
                        string currCarClass = ddlCarClass.Items[j].Text;
                        string currClass = (string)cars.Tables[0].Rows[i]["class"];
                        if (currCarClass == currClass)
                        {
                            exists = true;
                        }
                    }

                    if (!exists)
                    {
                        ddlCarClass.Items.Add(new ListItem((string)cars.Tables[0].Rows[i]["class"], (string)cars.Tables[0].Rows[i]["class"]));
                    }
                }
            }

            //populate dropdown with only a single entry for each car type
            for (int i = 0; i < cars.Tables[0].Rows.Count; i++)
            {
                if (i == 0)
                {
                    ddlType.Items.Add(new ListItem((string)cars.Tables[0].Rows[i]["type"], (string)cars.Tables[0].Rows[i]["type"]));
                }
                else
                {
                    bool exists = false;
                    for (int j = 0; j < ddlType.Items.Count; j++)
                    {
                        string currCarClass = ddlType.Items[j].Text;
                        string currClass = (string)cars.Tables[0].Rows[i]["type"];
                        if (currCarClass == currClass)
                        {
                            exists = true;
                        }
                    }

                    if (!exists)
                    {
                        ddlType.Items.Add(new ListItem((string)cars.Tables[0].Rows[i]["type"], (string)cars.Tables[0].Rows[i]["type"]));
                    }
                }
            }
              


          
        }

        protected void btnSearch_Click(object sender, EventArgs e)
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

            requirements.price = float.Parse(txtPrice.Text);
            requirements.gps = gps;
            requirements.type = ddlType.SelectedValue;
            requirements.carClass = ddlCarClass.SelectedValue;
            requirements.electric = electric;
            requirements.passengers = int.Parse(ddlPassengers.SelectedValue);
            requirements.luggage = int.Parse(ddlLuggage.SelectedValue);
            requirements.doors = int.Parse(ddlDoors.SelectedValue);
            requirements.mileage = int.Parse(txtMileage.Text);

            DataSet findCars = Car.FindCars(requirements, city, state);
            gvCars.DataSource = findCars;
            gvCars.DataBind();
        }
    }
}