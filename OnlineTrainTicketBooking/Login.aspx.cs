using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTrainTicketBooking
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();


            if (UserRepository.checkLogin(username, password) == 1)
            {
                Session["Username"] = username;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("Invalid Username or Password");
            }
        }
    }
}