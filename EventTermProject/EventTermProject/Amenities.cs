using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventTermProject
{
    public class Amenities
    {
        //class properties for object "Amenities"
        private bool smoking;
        private bool valetParking;
        private bool gym;
        private bool poolsideBar;
        private bool freeBreakfast;


        //getters to allow properties to be public and used elsewhere
        public bool Smoking
        {
            get { return smoking; }
            set { smoking = value; }
        }

        public bool ValetParking
        {
            get { return valetParking; }
            set { valetParking = value; }
        }

        public bool Gym
        {
            get { return gym; }
            set { gym = value; }
        }

        public bool PoolsideBar
        {
            get { return poolsideBar; }
            set { poolsideBar = value; }
        }

        public bool FreeBreakfast
        {
            get { return freeBreakfast; }
            set { freeBreakfast = value; }
        }
    }
}