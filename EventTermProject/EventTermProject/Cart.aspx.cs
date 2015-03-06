using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EventTermProject
{
    public partial class Cart : System.Web.UI.Page
    {
        CarService.Customer currCustomer = new CarService.Customer();
        CarService.CarService Car = new CarService.CarService();

        FlightService1.AirService Flight = new FlightService1.AirService();

        HotelService.HotelService hotelService = new HotelService.HotelService();
        HotelService.Customer hotelCust = new HotelService.Customer();
        HotelService.Room hotelRoom = new HotelService.Room();

        publishRef.Event eventObj = new publishRef.Event();
        publishRef.Customer eventCust = new publishRef.Customer();
        publishRef.EventService eventServ = new publishRef.EventService();

        double cartTotal = 0.00; 

        protected void Page_Load(object sender, EventArgs e)
        {
                      
                if (Session["LoggedIn"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                //get the customer email from login
                String email = (String)Session["LoggedIn"];

                //use a stored procedure to get customer id
                SqlCommand objCommand = new SqlCommand();
                objCommand.CommandType = CommandType.StoredProcedure;
                objCommand.CommandText = "GetCustomer";

                objCommand.Parameters.AddWithValue("@custEmail", email);
                DBConnect objDB = new DBConnect();
                DataSet myDS = objDB.GetDataSetUsingCmdObj(objCommand);
                int customerID = (int)myDS.Tables[0].Rows[0]["customerID"];
                string customerName = (string)myDS.Tables[0].Rows[0]["customerEmail"]; //we never ask a user to input name, so using email
                string customerEmail = (string)myDS.Tables[0].Rows[0]["customerEmail"];
                //float TotalDollarSales = (float)myDS.Tables[0].Rows[0]["TotalDollarSales"];
                string shippingAddress = (string)myDS.Tables[0].Rows[0]["shippingAddress"];

                //add the customer to the carservice customer object for use in reserve
                currCustomer.customerID = customerID;
                currCustomer.firstName = customerName;
                currCustomer.lastName = "lastname"; //we didn't have a last name in our database
                currCustomer.address = shippingAddress;
                currCustomer.age = 21; //didn't have an age in our database
                currCustomer.phoneNumber = "(215) 654-3131"; //didn't have a phone number in our database
                currCustomer.email = customerEmail;

                hotelCust.CustID = customerID;
                hotelCust.FirstName = customerName;
                hotelCust.LastName = "lastname";
                hotelCust.Address = shippingAddress;
                hotelCust.City = "City Unavilable";
                hotelCust.State = "State Unavilable";

                eventCust.CustomerEmail = customerEmail;
                eventCust.CustomerFirstName = customerName;
                eventCust.CustomerLastName = "lastname";
                eventCust.CustomerPhone = "0000000";
                if (!IsPostBack)
                {
                btnCheckout.Visible = true;
                
                //print the stuff from cars array
                if (Session["VacationPackage"] != null)
                {
                    
                    VacationPackage vacation = (VacationPackage)Session["VacationPackage"];

                    lblCartItems.Text += "<b>Cars:</b><br>";
                    for (int i = 0; i < vacation.cars.Count; i++)
                    {
                        CarService.Car currCar = vacation.cars[i];
                        int carID = currCar.carID;
                        double carPrice = currCar.price;
                        cartTotal += carPrice;
                        lblCartItems.Text += currCar.year + " " + currCar.make + " " + currCar.model + ". Price: $" + carPrice + "<br>";
                    }
                //print the stuff from flights array
                    lblCartItems.Text += "<br><b>Flights:</b><br>";
                    for (int i = 0; i < vacation.flights.Count; i++)
                    {
                        FlightObject currFlight = vacation.flights[i];
                        int flightID = currFlight.FlightID;
                        double flightPrice = currFlight.Price;
                        lblCartItems.Text += currFlight.CarrierName + " (flight number: " + flightID.ToString() + ") Price: $" + flightPrice + "<br>";
                        cartTotal += flightPrice;

                    }
                    lblCartItems.Text += "<br><b>Hotels:</b><br>";
                    for (int i = 0; i < vacation.hotels.Count; i++)
                    {
                        HotelObject hotelObj = vacation.hotels[i];
                        int hotelId = hotelObj.HotelID;
                        string hotelName = hotelObj.HotelName;
                        double hotelPrice = hotelObj.HotelPrice;
                        lblCartItems.Text += hotelObj.HotelName + "(ID:" + hotelId.ToString() + ") Price: $" + hotelPrice +"&nbsp;<br>";

                        cartTotal += hotelPrice;

                    }
                    lblCartItems.Text += "<br><b>Events:</b><br>";
                    for (int i = 0; i < vacation.events.Count; i++)
                    {
                        publishRef.Event eventObj = vacation.events[i];
                        int eventID = eventObj.ID;
                        string eventName = eventObj.Name;
                        string eventDay = eventObj.Day;
                        string eventTime = eventObj.Time;
                        double eventprice = eventObj.Price;
                        lblCartItems.Text += eventName + "(ID:" +eventID + ", "+ eventDay + "-" +eventTime+ ") Price: $" + eventprice + "&nbsp;<br>";

                        cartTotal += eventprice;

                    }
                    lblCartItems.Text += "<h4>Cart Total: $" + cartTotal + "</h4>";
                    lblTotal.Text = "" + cartTotal;
                }
                    

                lblSuccess.Text += "<br><hr><h4></h4><br>";
            }
        }

        //on checkout, CAR - use car object and customer object in reserve and display results
        //FLIGHT - use customerID, outgoing flight ID, outgoing seat type, outgoing flight date (optionally>>)returning flight id, returning seat type, returning flight date
        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            //clear cart text items, also need to clear the objects here so you can't re-checkout the same stuff
            VacationPackage vacation = (VacationPackage)Session["VacationPackage"];
            

                for (int i = 0; i < vacation.cars.Count; i++)
                {
                    CarService.Car currCar = vacation.cars[i];
                    
                    //int carID = currCar.carID;

                    if (Car.Reserve(currCustomer, currCar))
                    {
                        lblSuccess.Text += "You have reserved a " + currCar.year + " " + currCar.make + " " + currCar.model + " under " + currCustomer.email + "!<br>";

                    }
                    else {
                        lblSuccess.Text += "Error Proccessing Car Reservation<br>";
                    }

                }



                for (int i = 0; i < vacation.flights.Count; i++)
                {
                    FlightObject currFlight = vacation.flights[i];
                    int flightID = currFlight.FlightID;
                    string seatType = currFlight.SeatType;
                    DateTime date = new DateTime();
                    int id = currCustomer.customerID;

                    lblSuccess.Text += "WS Error Proccessing Flight Reservation<br>";

                    //if (Flight.Reserve(id, flightID, seatType, date.ToString(), flightID, seatType, date.ToString()))
                    //{
                    //    lblSuccess.Text += "You have reserved " + currFlight.CarrierName + " flight number: " + flightID.ToString() + " under " + currCustomer.email + "!<br>";
                    //}
                    //else
                    //{
                    //    lblSuccess.Text += "Error Proccessing Flight Reservation<br>";
                    //}

                }

                for (int i = 0; i < vacation.hotels.Count; i++)
                {
                    hotelRoom.RoomID = vacation.hotels[i].RoomID;
                    hotelRoom.Price = Int16.Parse(vacation.hotels[i].HotelPrice.ToString());
                    hotelRoom.Reserved = vacation.hotels[i].HotelAvail;
                    if (hotelRoom.Reserved)
                    {
                        lblSuccess.Text += "Room Reserved";
                    }
                    else
                    {
                        if (hotelService.Reserve(hotelRoom, hotelCust))
                        {
                            lblSuccess.Text += "You have reserved a room in the " + vacation.hotels[i].HotelName + " under " + currCustomer.email + "!<br>";
                        }
                        else
                        {
                            lblSuccess.Text += "Error Proccessing Hotel Reservation<br>";
                        }
                    }

                }

                for (int i = 0; i < vacation.events.Count; i++)
                {
                    eventObj.ID = vacation.events[i].ID;
                    eventObj.AgencyID = vacation.events[i].AgencyID;

                    if (eventServ.Reserve(eventObj, eventCust))
                    {
                        lblSuccess.Text += "You have reserved an event under " + currCustomer.email +"!<br>";
                    }
                    else
                    {
                        lblSuccess.Text += "Error Proccessing Event Reservation<br>";
                    }


                }

                string customerEmail = (string)Session["LoggedIn"];
                Serialize serialize = new Serialize();
                DateTime dateOrdered = DateTime.Today;
                serialize.WriteOrderToDB(vacation, customerEmail, lblTotal.Text, currCustomer.firstName, dateOrdered.ToString());
                vacation.flights.Clear();
                vacation.hotels.Clear();
                vacation.events.Clear();
                vacation.cars.Clear();
                Email email = new Email();

                string body = "<b>Dear " + currCustomer.firstName + ", <br><br>Your Vacation Package includes the following:</b><br>" + lblSuccess.Text + "<br><br><b>Your total cost is: $" + lblTotal.Text + "<br><br>Regards from Nicole & Bill O City</b>";
                email.SendMail(currCustomer.email, "NicoleAndBill@travel.com", "Confirmation", body, "nicole@temple.edu");
        }

        protected void btnClearCart_Click(object sender, EventArgs e)
        {
            VacationPackage vacation = new VacationPackage();
            Session["VacationPackage"] = vacation;
            Response.Redirect("Cart.aspx");
        }
    }
}