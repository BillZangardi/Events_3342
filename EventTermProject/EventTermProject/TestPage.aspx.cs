using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EventTermProject
{
    public partial class TestPage : System.Web.UI.Page
    {

        localRef.EventService eventService = new localRef.EventService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string state = "ALL";
                string city = "";
                DataSet myDs = eventService.GetEventAgencies(city, state);
                ddlAgency.DataSource = myDs.Tables[0];
                ddlAgency.DataTextField = "agencyName";
                ddlAgency.DataValueField = "agencyID";
                ddlAgency.DataBind();

                ddlAgency0.DataSource = myDs.Tables[0];
                ddlAgency0.DataTextField = "agencyName";
                ddlAgency0.DataValueField = "agencyID";
                ddlAgency0.DataBind();
            }
        }

        protected void btnTestGetEvents_Click(object sender, EventArgs e)
        {
            localRef.Agency agency = new localRef.Agency();
            if (ddlAgency0.SelectedValue != "")
            {
                agency.ID = int.Parse(ddlAgency0.SelectedValue);
            }
            agency.name = "";
            agency.city = "";
            agency.state = "";
            agency.email = "";
            agency.phone = "";


            string state = ddlState.SelectedItem.Text;
            string city = ddlCity.SelectedItem.Text;
            //string state = "NV";
            //string city = "Las Vegas";
            gvEvents.DataSource = eventService.GetEvents(agency, city, state);
            gvEvents.DataBind();


        }

        protected void btnFindEvents_Click(object sender, EventArgs e)
        {
            localRef.Activity activity = new localRef.Activity();

            if (string.IsNullOrEmpty(ddlDay.SelectedValue))
            {
                activity.day = "1";
            }
            else
            {
                activity.day = ddlDay.SelectedValue;
            }

            if (string.IsNullOrEmpty(ddlTime.SelectedValue))
            {
                activity.time = "1";
            }
            else
            {
                activity.time = ddlTime.SelectedValue;
            }
            if (string.IsNullOrEmpty(ddlType.SelectedValue))
            {
                activity.type = "1";
            }
            else
            {
                activity.type = ddlType.SelectedValue;
            }

            string state = ddlState1.SelectedValue;
            string city = ddlCity1.SelectedValue;
            gvEvents0.DataSource = eventService.FindEvents(activity, city, state);
            gvEvents0.DataBind();

        }

        protected void btnAddReserve_Click(object sender, EventArgs e)
        {
            localRef.Event eventObj = new localRef.Event();
            localRef.Customer custObj = new localRef.Customer();
            eventObj.ID = 2;
            eventObj.AgencyID = 2;
            custObj.CustomerFirstName = "Bill";
            custObj.CustomerLastName = "Zangardi";
            custObj.CustomerPhone = "555-555-1234";
            custObj.CustomerEmail = "Test@test.com";
            if (eventService.Reserve(eventObj, custObj))
            {
                lblError.Text = "It worked";
            }
            else
            {
                lblError.Text = "It didn't work";
            }

        }

        protected void btnGetAgencies_Click(object sender, EventArgs e)
        {
            string state = ddlState0.SelectedItem.Text;
            string city = ddlCity0.SelectedItem.Text;
            gvAgencies.DataSource = eventService.GetEventAgencies(city, state);
            gvAgencies.DataBind();
        }
    }
}
