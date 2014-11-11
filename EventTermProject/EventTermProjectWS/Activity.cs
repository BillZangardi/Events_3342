using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventTermProjectWS
{
    public class Activity
    {

        //class properties for object "Activity"
        private string eventType;
        private string eventDay;
        private string eventTime;
      //  private string eventCity;
       // private string eventState;

        //getters to allow properties to be public and used elsewhere
       
        public string type
        {
            get { return eventType; }
            set { eventType = value; }
        }

        public string day
        {
            get { return eventDay; }
            set { eventDay = value; }
        }

        public string time
        {
            get { return eventTime; }
            set { eventTime = value; }
        }

    }
}