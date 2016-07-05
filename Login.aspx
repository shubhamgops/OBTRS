<%@ Page Title="Log In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.Login" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
    <div class="page-header">
 <h3>Log In</h3>
</div>
    <table style="width: 100%;">
        <tr>
            <td align="center">
                <asp:Panel ID="loginpanel" runat="server">
                <table>
                    <tr>
                    <td> <asp:Label ID="usernameloginlbl" runat="server"  Font-Bold="true" Font-Italic="true" Text="Username:"></asp:Label></td>

                    <td><asp:TextBox ID="usernamelogintxtbox" runat="server" Height="20px" Width="230px" placeholder="Enter your username"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="usernamelogintxtbox" ErrorMessage="Enter your username" 
                            ValidationGroup="login"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                    <td> <asp:Label ID="passwordLoginlbl" runat="server"  Font-Bold="true" Font-Italic="true" Text="Password:"></asp:Label></td>

                    <td><asp:TextBox ID="passwordLogintxtbox" runat="server" Height="20px" Width="230px" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="passwordLogintxtbox" ErrorMessage="Enter your password" 
                            ValidationGroup="login"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr align="center">
                     <td colspan="2">
                         <asp:Button ID="loginbtn" runat="server" Text="Login" 
                             class="btn btn-primary" onclick="loginbtn_Click1" 
                             ValidationGroup="login" />
                             </td>
                    </tr>
                    <tr>
                    <td><asp:HyperLink ID="HyperLinkforgotpasswor" runat="server" NavigateUrl="~/ForgotPassword.aspx" Font-Bold="true" Font-Italic="true">Forgot Password</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                     <td><asp:HyperLink ID="HyperLinkcreateaccount" runat="server" NavigateUrl="~/UserRegistration1.aspx" Font-Bold="true" Font-Italic="true">Create Account</asp:HyperLink></td>
                   </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
                </asp:Panel>
            </td>

        </tr>
    </table>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
