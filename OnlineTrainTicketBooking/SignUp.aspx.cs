using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTrainTicketBooking
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtDdlNationality_SelectedIndexChanged();
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string userName = txtUsername.Text;
            string password = txtPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;
            string name = txtName.Text;
            string mailId = txtMailId.Text;
            DateTime dateOfBirth = DateTime.Parse(txtDob.Text);
            string gender;
            if (rdbtnMale.Checked)
            {
                gender = rdbtnMale.Text;
            }
            else if (rdbtnFemale.Checked)
            {
                gender = rdbtnFemale.Text;
            }
            else
            {
                gender = rdbtnOther.Text;
            }

            Int64 mobileNumber = Int64.Parse(txtMobilenumber.Text);
            string nationality = txtDdlNationality.Text;


            User user = new User(userName, password, confirmPassword, name, mailId, dateOfBirth, gender, mobileNumber, nationality);
            UserRepository.GetRegisteredInfo(user);

            Response.Write("Registered");
            Response.Redirect("Login.aspx");
        }

        protected void txtDdlNationality_SelectedIndexChanged()
        {

            if (!IsPostBack)
            {
                txtDdlNationality.Items.Add(new ListItem("None"));
                txtDdlNationality.Items.Add(new ListItem("Indian"));
                txtDdlNationality.Items.Add(new ListItem("Chinese"));
                txtDdlNationality.Items.Add(new ListItem("Paskistani"));
                txtDdlNationality.Items.Add(new ListItem("Nepali"));
                txtDdlNationality.Items.Add(new ListItem("Srilankan"));
                txtDdlNationality.Items.Add(new ListItem("Others"));
            }
        }
    }
}