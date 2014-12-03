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
        HotelService.HotelService hotels = new HotelService.HotelService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearchEvents_Click(object sender, EventArgs e)
        {
            HotelService.Amenities amenities = new HotelService.Amenities();
            amenities.Wifi = Int16.Parse(ddlWifi.SelectedItem.Value);
            amenities.Smoking = Int16.Parse(ddlSmoking.SelectedItem.Value);
            amenities.ValetParking = Int16.Parse(ddlValet.SelectedItem.Value);
            amenities.Gym = Int16.Parse(ddlGym.SelectedItem.Value);
            amenities.PoolsideBar = Int16.Parse(ddlPoolside.SelectedItem.Value);
            amenities.FreeBreakfast = Int16.Parse(ddlBreakfast.SelectedItem.Value);

            string state = ddlState.SelectedValue;
            string city = txtCity.Text;
            if (city == "")
            {
                lblError.Text = "Please Enter a City";
            }
            gvHotels.DataSource = hotels.GetRoomsByAmenities(amenities, city, state);
            gvHotels.DataBind();
            gvHotels.UseAccessibleHeader = true;
            gvHotels.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
}