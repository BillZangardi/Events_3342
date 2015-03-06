using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace EventTermProject
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            if (Session["VacationPackage"] != null)
            {
                VacationPackage vacationPackage = (VacationPackage)Session["VacationPackage"];
                string customerEmail = (string)Session["LoggedIn"];
                Serialize serialize = new Serialize();
                serialize.WriteCartToDB(vacationPackage, customerEmail);
            }
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}