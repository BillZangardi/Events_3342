using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventTermProjectWS
{
    public class Customer
    {
        //class properties for object "Customer"
        private int customerID;
        private string customerFirstName;
        private string customerLastName;
        private string customerPhone;
        private string customerEmail;


        //getters to allow properties to be public and used elsewhere
        public string CustomerFirstName
        {
            get { return customerFirstName; }
            set { customerFirstName = value; }
        }

        public string CustomerLastName
        {
            get { return customerLastName; }
            set { customerLastName = value; }
        }

        public string CustomerPhone
        {
            get { return customerPhone; }
            set { customerPhone = value; }
        }

        public string CustomerEmail
        {
            get { return customerEmail; }
            set { customerEmail = value; }
        }

        public int ID
        {
            get { return customerID; }
            set { customerID = value; }
        }
    }
}