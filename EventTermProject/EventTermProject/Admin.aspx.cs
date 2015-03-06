using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace EventTermProject
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             double totalSales = 0.00;
             int totalOrders = 0;
             Byte[] byteArray;
             Serialize serialize = new Serialize();
             DataSet myDs = serialize.ReadOrderFromDB();
             VacationPackage vacation = new VacationPackage();
             for(int i=0; i<myDs.Tables[0].Rows.Count; i++){
                 totalOrders++;
                 DataRow record = myDs.Tables[0].Rows[i];

                 if (record["vacationPackage"] != DBNull.Value)
                 {
                     byteArray = (Byte[])record["vacationPackage"];
                     vacation = (VacationPackage)serialize.DeserializeFromByteArray(byteArray);
                 }
                String custname = "" + record["customerName"];
                String email = "" + record["customerEmail"];
                String totalCost = "" + record["packageTotal"];
                totalSales += Convert.ToDouble(totalCost);
                String orderDate = "" + record["orderDate"];
                lblOrders.Text += "<h2>" + custname + "</h2>";
                lblOrders.Text += "<h4><b>Ordered: </b>" + orderDate + "</h4>";
                lblOrders.Text += "<b>Cars:</b><br>";
                for (int j = 0; j < vacation.cars.Count; j++)
                {
                    CarService.Car currCar = vacation.cars[j];
                    int carID = currCar.carID;
                    double carPrice = currCar.price;
                    lblOrders.Text += currCar.year + " " + currCar.make + " " + currCar.model + ". Price: $" + carPrice + "<br>";
                }
                //print the stuff from flights array
                lblOrders.Text += "<br><b>Flights:</b><br>";
                for (int j = 0; j < vacation.flights.Count; j++)
                {
                    FlightObject currFlight = vacation.flights[j];
                    int flightID = currFlight.FlightID;
                    double flightPrice = currFlight.Price;
                    lblOrders.Text += currFlight.CarrierName + " (flight number: " + flightID.ToString() + ") Price: $" + flightPrice + "<br>";
                }
                lblOrders.Text += "<br><b>Hotels:</b><br>";
                for (int j = 0; j < vacation.hotels.Count; j++)
                {
                    HotelObject hotelObj = vacation.hotels[j];
                    int hotelId = hotelObj.HotelID;
                    string hotelName = hotelObj.HotelName;
                    double hotelPrice = hotelObj.HotelPrice;
                    lblOrders.Text += hotelObj.HotelName + "(ID:" + hotelId.ToString() + ") Price: $" + hotelPrice +"&nbsp;<br>";
                }
                lblOrders.Text += "<br><b>Events:</b><br>";
                for (int j = 0; j < vacation.events.Count; j++)
                {
                    publishRef.Event eventObj = vacation.events[j];
                    int eventID = eventObj.ID;
                    string eventName = eventObj.Name;
                    string eventDay = eventObj.Day;
                    string eventTime = eventObj.Time;
                    double eventprice = eventObj.Price;
                    lblOrders.Text += eventName + "(ID:" +eventID + ", "+ eventDay + "-" +eventTime+ ") Price: $" + eventprice + "&nbsp;<br>";
                }
                lblOrders.Text += "<h4>Cart Total: $" + totalCost + "</h4>";
                lblOrders.Text += "<br><hr><h4></h4><br>";
            }
             lblTotalOrders.Text = "<b>Total Orders: </b>" + totalOrders;
             lblTotalSales.Text = "<b>Total Sales: $</b>" + totalSales;
        }

    }

}