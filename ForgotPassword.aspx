<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
<div class="page-header">
<h3>Password Reset</h3>
</div>
 <table style="width: 100%;">
        <tr>
            <td align="center">
                <asp:Panel ID="loginpanel" runat="server">
                
                <table>
                    <tr>
                    <td> 
                        <asp:Label ID="usernamelbl" runat="server" Font-Bold="True" 
                            Font-Italic="True" style="margin-bottom: 10px" Text="Email or Username:"></asp:Label></td>

                    <td><asp:TextBox ID="usernametxt" runat="server" Height="25px" Width="230px" 
                            style="margin-bottom:10px" ontextchanged="usernametxt_TextChanged" 
                            AutoPostBack="True"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="usernametxt" ErrorMessage="insert username or email" 
                            ValidationGroup="reset"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    
                    <tr>
                    <td> <asp:Label ID="newpasswordlbl" runat="server"  Font-Bold="true" Font-Italic="true" style="margin-bottom: 10px" Text="New Password:"></asp:Label></td>

                    <td><asp:TextBox ID="newpasswordtxtbox" runat="server" Height="25px" Width="230px" 
                            style="margin-bottom: 10px" TextMode="Password"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="newpasswordtxtbox" ErrorMessage="Required new password" 
                            ValidationGroup="reset"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                    <td> <asp:Label ID="retypelblpasswordlbl" runat="server"  Font-Bold="true" Font-Italic="true" style="margin-bottom: 10px" Text="Retype New Password:"></asp:Label></td>

                    <td><asp:TextBox ID="retypelblpasswordtxtbox" runat="server" Height="25px" 
                            Width="230px" TextMode="Password" ></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="retypelblpasswordtxtbox" 
                            ErrorMessage="retype new password" ValidationGroup="reset"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="newpasswordtxtbox" 
                            ControlToValidate="retypelblpasswordtxtbox" 
                            ErrorMessage="Both password must match" ValidationGroup="reset"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr align="center">
                     <td colspan="2">
                         <asp:Button ID="resetpasswordbtn" runat="server" Text="Reset" 
                              class="btn btn-primary" ValidationGroup="reset" 
                             onclick="resetpasswordbtn_Click"/></td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <asp:Label ID="errorlbl" runat="server" ForeColor="Red"></asp:Label>
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
