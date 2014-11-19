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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoginPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            bool passwordsMatch = false;
            bool allFieldsFilled = true;
            String email = txtUsername.Text;
            String password = txtPassword.Text;
            String confPassword = txtConfirmPassword.Text;
            String shippingAddress = txtShippingAddress.Text;
            if (password.Equals(confPassword))
            {
                passwordsMatch = true;
            }
            if (email.Equals("") || password.Equals("") || confPassword.Equals("") || shippingAddress.Equals(""))
            {
                allFieldsFilled = false;
            }
            String address = txtShippingAddress.Text;
            int passwordEncrypt = password.GetHashCode();

            if (passwordsMatch && allFieldsFilled)
            {
                SqlCommand objCommand = new SqlCommand();
                objCommand.CommandType = CommandType.StoredProcedure;
                objCommand.CommandText = "SignUp";

                objCommand.Parameters.AddWithValue("@email", email);
                objCommand.Parameters.AddWithValue("@password", passwordEncrypt);
                objCommand.Parameters.AddWithValue("@shippingAddress", shippingAddress);

                DBConnect objDB = new DBConnect();
                if (objDB.DoUpdateUsingCmdObj(objCommand) > 0)
                {
                    lblError.Text = "Successfully Added";
                    if (chkRememberMe.Checked)
                    {
                        HttpCookie myCookie = new HttpCookie("CIS3342_Cookie");
                        myCookie.Values["email"] = email;
                        myCookie.Expires = new DateTime(2025, 1, 1);

                        Response.Cookies.Add(myCookie);
                    }
                    txtUsername.Text = "";
                    txtShippingAddress.Text = "";
                }
                else { lblError.Text = "Failed to Add"; }
            }
            else
            {
                lblError.Text = "Passwords Do Not Match or All fields not filled";
            }


        }
    }
}