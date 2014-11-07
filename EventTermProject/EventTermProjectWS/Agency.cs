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


        //getters to allow properties to be public and used elsewhere -- in PizzaMethods
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



    }
}