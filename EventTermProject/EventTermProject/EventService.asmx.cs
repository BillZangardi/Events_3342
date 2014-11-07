using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;

namespace EventTermProject
{
    /// <summary>
    /// Summary description for EventService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class EventService : System.Web.Services.WebService
    {

        [WebMethod]
        public DataSet GetEvents(Object agency, string city, string state)
        {
            DataSet myDS = null;
            return myDS;
        }

        [WebMethod]
        public DataSet FindEvents(Object activities, string city, string state)
        {
            DataSet myDS = null;
            return myDS;
        }
    }
}
