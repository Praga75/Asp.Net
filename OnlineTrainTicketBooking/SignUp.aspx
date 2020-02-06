<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="OnlineTrainTicketBooking.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="formRegister" runat="server">
        <div>
            <div>
                <h3>Unique Login Details</h3>
                <table>
                    <tr>
                        <td>UserName</td>
                        <td>

                            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ForeColor="Red" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                        </td>

                    </tr>
                    <tr>
                        <td>Password</td>

                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ForeColor="Red" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                        </td>

                    </tr>
                    <tr>
                        <td>Confirm Password</td>

                        <td>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <%--<asp:CompareValidator ID="cvPassword" runat="server" ControlToComapre="txtPassword" ControlToValidate="txtConfirmPassword" ForeColor="Red" ErrorMessage="Password doesn't match!!!"></asp:CompareValidator>--%>
                            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtPassword" ForeColor="Red" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                           </td>
                    </tr>

                </table>
            </div>
            <div>
                <h3>Personal Details</h3>
                <div>
                    <table>
                        <tr>
                            <td>Name </td>
                            <td>
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ForeColor="Red" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Mail Id</td>
                            <td>
                                <asp:TextBox ID="txtMailId" runat="server" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rvfMailId" runat="server" ControlToValidate="txtMailId" ForeColor="Red" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Date of Birth</td>
                            <td>
                                <asp:TextBox ID="txtDob" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Gender</td>
                            <td>
                                <asp:RadioButton ID="rdbtnMale" Text="Male" runat="server" GroupName="Gender" />
                                <asp:RadioButton ID="rdbtnFemale" Text="Female" runat="server" GroupName="Gender" />
                                <asp:RadioButton ID="rdbtnOther" Text="Other" runat="server" GroupName="Gender" />
                            </td>
                        </tr>
                        <tr>
                            <td>Mobile Number
                            </td>
                            <td>
                                <asp:TextBox ID="txtMobilenumber" runat="server" TextMode="Phone"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revMobileNumber" runat="server"
                                    ControlToValidate="txtMobilenumber" ErrorMessage="Mobile Number should be a 10 digit number" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Nationality</td>
                            <td>

                                <asp:DropDownList ID="txtDdlNationality" runat="server" Width="122px">
                                   
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvDdlNationality" runat="server" ControlToValidate="txtDdlNationality" ForeColor="Red" ErrorMessage="Required Field"></asp:RequiredFieldValidator>

                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="BtnSubmit_Click" Style="margin-left: 39px" Text="Submit" Width="157px" />
    </form>
</body>

</html>
