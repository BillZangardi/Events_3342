using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventTermProject
{
    public partial class TestPage : System.Web.UI.Page
    {

        localRef.EventService eventService = new localRef.EventService();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTestGetEvents_Click(object sender, EventArgs e)
        {
            localRef.Agency agency = new localRef.Agency();

            agency.ID = 4;
            agency.name = "";
            agency.city = "";
            agency.state = "";
            agency.email = "";
            agency.phone = "";
           

            //string state = ddlState.SelectedValue;
            //string city = txtCity.Text;
            string state = "NV";
            string city = "Las Vegas";
            gvEvents.DataSource = eventService.GetEvents(agency, city, state);
            gvEvents.DataBind();


        }

        protected void btnFindEvents_Click(object sender, EventArgs e)
        {
            localRef.Activity activity = new localRef.Activity();
            activity.day = "M";
            activity.time = "2:00 pm";
            activity.type = "Tour";

            string state = "PA";
            string city = "Philadelphia";
            gvEvents.DataSource = eventService.FindEvents(activity, city, state);
            gvEvents.DataBind();

        }

        protected void btnAddReserve_Click(object sender, EventArgs e)
        {
            localRef.Event eventObj = new localRef.Event();
            localRef.Customer custObj = new localRef.Customer();
            eventObj.ID = 2;
            eventObj.AgencyID = 2;
            custObj.CustomerEmail = "Bill";
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
    }
}