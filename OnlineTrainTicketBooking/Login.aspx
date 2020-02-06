<%@ Page  Language="C#" MasterPageFile ="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineTrainTicketBooking.Login" %>
<asp:Content ID ="HeadContent" ContentPlaceHolderID ="cphead" runat ="server">
        <link href="FormDesign.css" rel="stylesheet" type="text/css" />
  
</asp:Content>
   

<asp:Content ID ="BodyContent" ContentPlaceHolderID ="cpbody" runat ="server">
    
  <div class="LoginBodyContainer">
        <div class ="LoginContainer">
            <table>
                <tr>
                <td> UserName</td>
               <td><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
            </tr>
                <tr>
                <td>Password</td>
                <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                <td><asp:Button ID="btnLogin" runat="server" Text="Login" Width="100px" OnClick="BtnLogin_Click" /></td>
                <td>
                <asp:Button ID="btnSignUp" runat="server" Text="SignUp" Width="100px" OnClick="BtnSignUp_Click" /> </td>
           </tr>
             </table>
        </div>
      </div>
   </asp:Content>