<%@ Page Title="User Registration 2" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserRegistration2.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.UserRegistration2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
<asp:Panel ID="UserRegitrationpanel2" runat="server">
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:Label ID="usernamereglbl" runat="server"  
                   Text="Enter Your Username:" Font-Bold="true" Font-Italic="true"
                    ></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="usernametxtbox" runat="server" Height="20px" Width="230px" placeholder="Enter your username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="usernametxtbox" ErrorMessage="username is required" 
                    ValidationGroup="submit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Label ID="passwordreglbl" runat="server"  Font-Bold="true" Font-Italic="true"
                      Text="Set Your Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="passwordtxtbox" runat="server" Height="20px" Width="230px" TextMode="Password" placeholder="Enter your Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="passwordtxtbox" ErrorMessage="password is required" 
                    ValidationGroup="submit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="passswordrtreglbl" runat="server" Font-Bold="true" Font-Italic="true"
                   Text="Retype Your Password:"></asp:Label> 
            </td>
            <td>
                <asp:TextBox ID="rtpasswordtxtbox" runat="server" Height="20px" Width="230px" TextMode="Password" placeholder="Retype your password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="rtpasswordtxtbox" 
                    ErrorMessage="retype your new password" ValidationGroup="submit"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="passwordtxtbox" ControlToValidate="rtpasswordtxtbox" 
                    ErrorMessage="both password must matched" ValidationGroup="submit"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2"align="center">
                 <asp:Button ID="Confirmbtn" runat="server" Text="confirm" 
                 class="btn btn-primary" onclick="Confirmbtn_Click" ValidationGroup="submit" /></td> 
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblinfo" runat="server" ForeColor="#666666"></asp:Label>
            </td>
        </tr>
    </table>
    </asp:Panel>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
