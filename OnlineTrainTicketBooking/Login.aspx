<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineTrainTicketBooking.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="formLogin" runat="server">
        <div>
            <h2>IRCTC Online Train Ticket Booking</h2>
            <br />
            <br />
            <div>
                
                <b>UserName</b>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />
                <br />
                
                <b>Password&nbsp;&nbsp; </b>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
                <br />

                <asp:Button ID="btnLogin" runat="server" Text="Login" Width="100px" OnClick="btnLogin_Click" />
                
                <asp:Button ID="btnSignUp" runat="server" Text="SignUp" Width="100px" OnClientClick="window.open('SignUp.aspx','SignUpPage');" />
           
                </div>
        </div>
    </form>
</body>
</html>
