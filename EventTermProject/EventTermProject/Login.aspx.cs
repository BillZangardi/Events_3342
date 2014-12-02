using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace EventTermProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Request.Cookies["CIS3342_Cookie"] != null)
            {
                HttpCookie cookie = Request.Cookies["CIS3342_Cookie"];
                txtUsername.Text = cookie.Values["email"].ToString();
            }

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String email = txtUsername.Text;
            String password = txtPassword.Text;
            int passwordEncrypted = password.GetHashCode();


            if ((chkForgetMe.Checked) && (chkRememberMe.Checked))
            {
                lblError.Text = "Select only 1 checkbox";
            }
            else if (chkRememberMe.Checked)
            {
                HttpCookie myCookie = new HttpCookie("CIS3342_Cookie");
                myCookie.Values["email"] = email;
                myCookie.Expires = new DateTime(2025, 1, 1);

                Response.Cookies.Add(myCookie);
            }

            else if (chkForgetMe.Checked)
            {
                HttpCookie myCookie = new HttpCookie("CIS3342_Cookie");
                myCookie.Values["email"] = "";
                myCookie.Expires = new DateTime(2025, 1, 1);
                Response.Cookies.Add(myCookie);
            }


            bool allFieldsFilled = true;
            
            if (email.Equals("") || password.Equals(""))
            {
                allFieldsFilled = false;
            }
            if (allFieldsFilled)
            {
                SqlCommand objCommand = new SqlCommand();
                objCommand.CommandType = CommandType.StoredProcedure;
                objCommand.CommandText = "Login";

                objCommand.Parameters.AddWithValue("@email", email);
                objCommand.Parameters.AddWithValue("@password", passwordEncrypted);

                DBConnect objDB = new DBConnect();
                DataSet myDs = objDB.GetDataSetUsingCmdObj(objCommand);
                if (myDs.Tables[0].Rows.Count > 0)
                {              
                    Session["LoggedIn"] = email;
                    Response.Redirect("Shop.aspx");
                }
                else { lblError.Text = "Failed to Login"; }
            }
            else
            {
                lblError.Text = "Passwords Do Not Match or All fields not filled";
            }


        }
    }
}