using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EventTermProject
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        publishRef.EventService eventService = new publishRef.EventService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnSearchEvents_Click(object sender, EventArgs e)
        {
            publishRef.Activity activity = new publishRef.Activity();
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

            string state = ddlState.SelectedValue;
            string city = ddlCity.SelectedValue ;
            if (city == "")
            {
                lblError.Text = "Please Enter a City";
            }
            gvEvents.DataSource = eventService.FindEvents(activity, city, state);
            gvEvents.DataBind();
            gvEvents.UseAccessibleHeader = true;
            gvEvents.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void gvEvents_SelectedIndexChanged(object sender, EventArgs e)
        {
            string eventId = gvEvents.SelectedRow.Cells[0].Text;

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

            try
            {
                publishRef.Event eventObj = new publishRef.Event();
                eventObj.ID = Convert.ToInt32(eventId);
                eventObj.Name = gvEvents.SelectedRow.Cells[1].Text;
                eventObj.Type = gvEvents.SelectedRow.Cells[2].Text;
                eventObj.Day = gvEvents.SelectedRow.Cells[3].Text;
                eventObj.Time = gvEvents.SelectedRow.Cells[4].Text;
                eventObj.City = gvEvents.SelectedRow.Cells[5].Text;
                eventObj.State = gvEvents.SelectedRow.Cells[6].Text;
                eventObj.Price = Convert.ToDouble(gvEvents.SelectedRow.Cells[7].Text);
                eventObj.AgencyID = Convert.ToInt32(gvEvents.SelectedRow.Cells[8].Text);

                vacation.events.Add(eventObj);
                lblError.Text = "Events successfully added to cart";

            }
            catch (Exception ex)
            {
                lblError.Text = "Error: Could not add Event to your Vacation Package" + ex;

                return;
            }

            //set the object into session
            Session["VacationPackage"] = vacation;
        }
    }
}