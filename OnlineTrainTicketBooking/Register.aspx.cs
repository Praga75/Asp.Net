using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTrainTicketBooking
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected  void BtnSubmit_Click(object sender, EventArgs e)
        {
            User user = new User();
            user.UserName = txtUsername.Text;
            user.Password = txtPassword.Text;
            user.ConfirmPassword = txtConfirmPassword.Text;
            user.Name =txtName.Text;
            user.MailId = txtMailId.Text;
            user.DateOfBirth = DateTime.Parse(txtDob.Text);
            if (rdbtnMale.Checked)
            {
               user.Gender = rdbtnMale.Text;
            }
            else if (rdbtnFemale.Checked)
            {
                user.Gender = rdbtnFemale.Text;
            }
            else
            {
                user.Gender = rdbtnOther.Text;
            }

            user.MobileNumber = Int64.Parse(txtMobilenumber.Text);
            user.Nationality =Request.Form["Nationality"];

          
            ///User user = new User(userName, password, confirmPassword, name, mailId, dateOfBirth, gender, mobileNumber, nationality);
            UserRepository.GetRegisteredInfo(user);
        }
    }
}