using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventTermProject
{
    public partial class Cars : System.Web.UI.Page
    {

        CarService.CarService Car = new CarService.CarService();


        protected void Page_Load(object sender, EventArgs e)
        {

            

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }
    }
}