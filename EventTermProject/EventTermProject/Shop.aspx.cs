using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventTermProject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblWelcome.Text = "Welcome to our tarvel site " + Session["LoggedIn"];
            }
        }


        protected void btnCars_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cars.aspx");

        }

        protected void btnFlights_Click(object sender, EventArgs e)
        {
            Response.Redirect("Flights.aspx");

        }

        protected void btnEvents_Click(object sender, EventArgs e)
        {

        }

        protected void btnHotels_Click(object sender, EventArgs e)
        {

        }
    }
}