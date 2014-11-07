using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;


namespace EventTermProjectWS
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
        DBConnect objDB = new DBConnect();
        
        [WebMethod]
        public DataSet GetEvents(Agency agency, string city, string state)
        {
            String sql = "SELECT * FROM Events where agencyID = '" + agency + "' AND eventCity ='" + city + "' AND eventState = '" + state + "'";

            DataSet myDS = objDB.GetDataSet(sql);
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
