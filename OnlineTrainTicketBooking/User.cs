using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineTrainTicketBooking
{
    public class User
    {
        public string UserName { get; set; }
        public string Password { get; set; }
        public string ConfirmPassword { get; set; }
        public string Name { get; set; }
        public string MailId { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string Gender { get; set; }
        public long MobileNumber { get; set; }
        public string Nationality { get; set; }

        //public User(string UserName, string password, string confirmPassword, string name, string mailId, DateTime dateofbirth, string gender, long mobileNumber, string nationality)
        //{
        //    this.UserName = UserName;
        //    this.Password = password;
        //    this.ConfirmPassword = confirmPassword;
        //    this.Name = name;
        //    this.MailId = mailId;
        //    this.DateOfBirth = dateofbirth;
        //    this.Gender = gender;
        //    this.MobileNumber = mobileNumber;
        //    this.Nationality = nationality;
        //}

    }
}