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

            agency.ID = 1;
            agency.name = "";
            agency.city = "";
            agency.state = "";
            agency.email = "";
            agency.phone = "";
           

            //string state = ddlState.SelectedValue;
            //string city = txtCity.Text;
            string state = "PA";
            string city = "Philadelphia";
            gvEvents.DataSource = eventService.GetEvents(agency, city, state);
            gvEvents.DataBind();


        }
    }
}