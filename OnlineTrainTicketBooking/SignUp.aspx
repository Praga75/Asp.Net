<%@ Page Language="C#" MasterPageFile ="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="OnlineTrainTicketBooking.SignUp" %>
<asp:Content ID ="HeadContent" ContentPlaceHolderID ="cphead" runat ="server">
        <link href="FormDesign.css" rel="stylesheet" type="text/css" />
  
</asp:Content>
   
<asp:Content ID ="Content1" ContentPlaceHolderID ="cpbody" runat ="server">
  <div class ="SignUpBody">
        <div class ="SignUpContainer">
            
            <div >
                <h3>Unique Login Details</h3>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="LbUsername" runat="server" Text="UserName"></asp:Label></td>
                        <td>

                            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ForeColor="Red" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Lbpassword" runat="server" Text="Password"></asp:Label></td>


                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ForeColor="Red" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LabelConfirmPassword" runat="server" Text="Confirm Password"></asp:Label></td>

                        <td>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtPassword" ForeColor="Red" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Password doesn't match" ControlToCompare="txtPassword" ForeColor="Red"></asp:CompareValidator>
                        </td>
                    </tr>

                </table>
            </div>
            <div>
                <h3>Personal Details</h3>
                <div>
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="LabelName" runat="server" Text="Name"></asp:Label>


                            </td>
                            <td>
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ForeColor="Red" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelMailID" runat="server" Text="Mail Id"></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txtMailId" runat="server" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rvfMailId" runat="server" ControlToValidate="txtMailId" ForeColor="Red" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelDob" runat="server" Text="Date of Birth"></asp:Label></td>


                            <td>
                                <asp:TextBox ID="txtDob" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Labelgender" runat="server" Text="Gender"></asp:Label></td>

                            <td>
                                <asp:RadioButton ID="rdbtnMale" Text="Male" runat="server" GroupName="Gender" />
                                <asp:RadioButton ID="rdbtnFemale" Text="Female" runat="server" GroupName="Gender" />
                                <asp:RadioButton ID="rdbtnOther" Text="Other" runat="server" GroupName="Gender" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelMobilenumber" runat="server" Text="Mobile Number"></asp:Label></td>


                            <td>
                                <asp:TextBox ID="txtMobilenumber" runat="server" TextMode="Phone"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revMobileNumber" runat="server"
                                    ControlToValidate="txtMobilenumber" ErrorMessage="Mobile Number should be a 10 digit number" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelNationality" runat="server" Text="Nationality"></asp:Label></td>


                            <td>

                                <asp:DropDownList ID="txtDdlNationality" runat="server" Width="122px">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvDdlNationality" runat="server" ControlToValidate="txtDdlNationality" ForeColor="Red" ErrorMessage="Required Field"></asp:RequiredFieldValidator>

                            </td>
                        </tr>
                    </table>
                </div>
            </div>
    
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="BtnSubmit_Click" Style="margin-left: 39px" Text="Submit" Width="157px" />
       </div>
      </div>
</asp:Content>