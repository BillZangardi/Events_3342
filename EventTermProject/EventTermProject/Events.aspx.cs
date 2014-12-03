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
            string city = txtCity.Text;
            if (city == "")
            {
                lblError.Text = "Please Enter a City";
            }
            gvEvents.DataSource = eventService.FindEvents(activity, city, state);
            gvEvents.DataBind();
            gvEvents.UseAccessibleHeader = true;
            gvEvents.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
}