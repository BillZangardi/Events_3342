using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventTermProject
{
    [Serializable]
    public class FlightObject
    {
        //class properties for object "Flight"
        private int flightID;
        private string carrierName;
        private string seatType;
        private double price;
     


        //getters to allow properties to be public and used elsewhere
        public int FlightID
        {
            get { return flightID; }
            set { flightID = value; }
        }

        public string CarrierName
        {
            get { return carrierName; }
            set { carrierName = value; }
        }

        public string SeatType
        {
            get { return seatType; }
            set { seatType = value; }
        }

        public double Price
        {
            get { return price; }
            set { price = value; }
        }
    }
}