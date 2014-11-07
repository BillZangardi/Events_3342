using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventTermProjectWS
{
    public class Agency
    {
        //class properties for object "Agency"
        private int agencyID;
        private string agencyName;
        private string agencyPhone;
        private string agencyEmail;
        private string agencyCity;
        private string agencyState;


        //getters to allow properties to be public and used elsewhere
        public string name
        {
            get { return agencyName; }
            set { agencyName = value; }
        }

        public string phone
        {
            get { return agencyPhone; }
            set { agencyPhone = value; }
        }

        public string email
        {
            get { return agencyEmail; }
            set { agencyEmail = value; }
        }

        public int ID
        {
            get { return agencyID; }
            set { agencyID = value; }
        }

        public string city
        {
            get { return agencyCity; }
            set { agencyCity = value; }
        }
        public string state
        {
            get { return agencyState; }
            set { agencyState = value; }
        }


    }
}