using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EventTermProject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        HotelService.HotelService hotels = new HotelService.HotelService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] == null)
            {
                Response.Redirect("Login.aspx");
            }
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
            string city = ddlCity.SelectedValue;
            if (city == "")
            {
                lblError.Text = "Please Enter a City";
            }
            else
            {
                DataSet hotelList = hotels.GetRoomsByAmenities(amenities, city, state);
                gvHotels.DataSource = hotelList;
                gvHotels.DataBind();
                gvHotels.UseAccessibleHeader = true;
                gvHotels.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }

        protected void gvHotels_SelectedIndexChanged(object sender, EventArgs e)
        {
            string hotelId = gvHotels.SelectedRow.Cells[0].Text;
            
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

            if(Boolean.Parse(gvHotels.SelectedRow.Cells[4].Text)){
                try
                {
                    HotelObject hotelObj = new HotelObject();
                    hotelObj.HotelID = Convert.ToInt32(hotelId);
                    hotelObj.RoomID = Convert.ToInt32(gvHotels.SelectedRow.Cells[1].Text);
                    hotelObj.HotelName = gvHotels.SelectedRow.Cells[2].Text;
                    hotelObj.HotelPrice = Convert.ToDouble(gvHotels.SelectedRow.Cells[3].Text);
                    hotelObj.HotelAvail = Boolean.Parse(gvHotels.SelectedRow.Cells[4].Text);
                    if (hotelObj.HotelAvail)
                    {
                        lblError.Text = "Room already booked";
                    }
                    else
                    {
                        vacation.hotels.Add(hotelObj);
                        lblError.Text = "Reservation successfully added to cart";
                    }
                }
                catch (Exception ex)
                {
                    lblError.Text = "Error: Could not add Hotel to your Vacation Package" + ex;

                    return;
                }

                //set the object into session
                Session["VacationPackage"] = vacation;
            }else{
                lblError.Text = "The room you selected is unavailable";
            }

        }
    }
}