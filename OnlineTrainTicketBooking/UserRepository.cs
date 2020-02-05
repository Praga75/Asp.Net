using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace OnlineTrainTicketBooking
{
    public class UserRepository
    {
        static string connectionString = ConfigurationManager.ConnectionStrings["Connectionstring"].ConnectionString;

        internal static void GetRegisteredInfo(User user)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["Connectionstring"].ConnectionString;
                using (SqlConnection sqlConn = new SqlConnection(connectionString))
                {
                    SqlCommand sqlCommand = new SqlCommand("sp_UserDetail", sqlConn);
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    {
                        sqlCommand.Parameters.AddWithValue("@UserName", user.UserName);
                        sqlCommand.Parameters.AddWithValue("@Password", user.Password);
                        sqlCommand.Parameters.AddWithValue("@ConfirmPassword", user.ConfirmPassword);
                        sqlCommand.Parameters.AddWithValue("@Name", user.Name);
                        sqlCommand.Parameters.AddWithValue("@MailId", user.MailId);
                        sqlCommand.Parameters.AddWithValue("@Dateofbirth", user.DateOfBirth);
                        sqlCommand.Parameters.AddWithValue("@Gender", user.Gender);
                        sqlCommand.Parameters.AddWithValue("@MobileNumber", user.MobileNumber);
                        sqlCommand.Parameters.AddWithValue("@Nationality", user.Nationality);
                        sqlCommand.ExecuteNonQuery();
                        sqlConn.Open();
                        sqlCommand.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception exception)
            {
                Console.WriteLine("problem in opening connection" + exception.Message);
            }


        }
        public static int checkLogin(string username, string password)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand("sp_CheckUser", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@UserName", username);
            command.Parameters.AddWithValue("@Password", password);
            int result = (Int32)command.ExecuteScalar();
            connection.Close();
            return result;
        }
        //public static void GetRegisteredInfo(User user)
        //{
        //    string connectionString = ConfigurationManager.ConnectionStrings["Connectionstring"].ConnectionString;
        //    SqlConnection sqlConnection = new SqlConnection(connectionString);

        //    SqlCommand sqlCommand = new SqlCommand("sp_UserDetail", sqlConnection);
        //    sqlCommand.CommandType = CommandType.StoredProcedure;

        //    try
        //    {
        //        sqlConnection.Open();
        //        sqlCommand.Parameters.AddWithValue("@UserName", user.UserName);
        //        sqlCommand.Parameters.AddWithValue("@Password", user.Password);
        //        sqlCommand.Parameters.AddWithValue("@ConfirmPassword", user.ConfirmPassword);
        //        sqlCommand.Parameters.AddWithValue("@Name", user.Name);
        //        sqlCommand.Parameters.AddWithValue("@MailId", user.MailId);
        //        sqlCommand.Parameters.AddWithValue("@Dateofbirth", user.DateOfBirth);
        //        sqlCommand.Parameters.AddWithValue("@Gender", user.Gender);
        //        sqlCommand.Parameters.AddWithValue("@MobileNumber", user.MobileNumber);
        //        sqlCommand.Parameters.AddWithValue("@Nationality", user.Nationality);               
        //        sqlCommand.ExecuteNonQuery();

        //    }
        //    catch
        //    {
        //        Console.WriteLine("Something Went Wrong");
        //    }
        //    finally
        //    {
        //        sqlConnection.Close();
        //    }
        //}
    }

}