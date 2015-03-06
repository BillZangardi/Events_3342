using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventTermProject
{
    [Serializable]
    public class HotelObject
    {
        //class properties for object "Flight"
        private int hotelId;
        private int roomId;
        private string hotelName;
        private double hotelPrice;
        private bool hotelAvail;



        //getters to allow properties to be public and used elsewhere
        public int HotelID
        {
            get { return hotelId; }
            set { hotelId = value; }
        }

        public int RoomID
        {
            get { return roomId; }
            set { roomId = value; }
        }

        public string HotelName
        {
            get { return hotelName; }
            set { hotelName = value; }
        }

        public double HotelPrice
        {
            get { return hotelPrice; }
            set { hotelPrice = value; }
        }

        public bool HotelAvail
        {
            get { return hotelAvail; }
            set { hotelAvail = value; }
        }
    }
}