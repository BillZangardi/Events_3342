using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventTermProjectWS
{
    public class Event
    {
        //class properties for object "Event"
        private int eventID;
        private string eventName;
        private string eventType;
        private string eventDay;
        private string eventTime;
        private string eventCity;
        private string eventState;
        private int agencyID;


        //getters to allow properties to be public and used elsewhere
        public string Name
        {
            get { return eventName; }
            set { eventName = value; }
        }

        public string Type
        {
            get { return eventType; }
            set { eventType = value; }
        }

        public string Day
        {
            get { return eventDay; }
            set { eventDay = value; }
        }

        public string Time
        {
            get { return eventTime; }
            set { eventTime = value; }
        }

        public string City
        {
            get { return eventCity; }
            set { eventCity = value; }
        }

        public string State
        {
            get { return eventState; }
            set { eventState = value; }
        }

        public int ID
        {
            get { return eventID; }
            set { eventID = value; }
        }

        public int AgencyID
        {
            get { return agencyID; }
            set { agencyID = value; }
        }
    }
}