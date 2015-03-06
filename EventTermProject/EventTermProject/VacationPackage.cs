using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventTermProject
{
    [Serializable]
    public class VacationPackage
    {
        //properties will include arraylists of cars, flights, hotels, events
        public List<CarService.Car> cars;
        public List<FlightObject> flights; //flights is our own object because Lisa and Tom did not create one
        public List<HotelObject> hotels;
        public List<publishRef.Event> events;
    
        //constructor for the VacationPackage object
    public VacationPackage() {

        cars = new List<CarService.Car>();
        flights = new List<FlightObject>();
        hotels = new List<HotelObject>();
        events = new List<publishRef.Event>();
    }
}


}