<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateUserInfo.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.UpdateUserInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
<div class="page-header">
<h3>Update Your Information</h3></div>
<asp:Panel ID="userinfoupdation" runat="server">
<table width="100%">
    <tr>
        <td>
            <asp:Label ID="updationnamelbl" runat="server" Font-Bold="true" Font-Italic="true" Text="Name:"></asp:Label></td>
        <td><asp:Label ID="updatinnamelbl1" runat="server" Text=""></asp:Label></td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td><asp:Label ID="updationemaillbl" runat="server"  Font-Bold="true" Font-Italic="true" Text="Email:"></asp:Label></td>
        <td>
            <asp:TextBox ID="updationemailtb" runat="server" 
                contentplaceholder="enter your new email here" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="updationemailtb" ErrorMessage="Email is required" 
                ValidationGroup="update"></asp:RequiredFieldValidator>
                &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="updationemailtb" ErrorMessage="valid email id is required" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="update"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td><asp:Label ID="updationaddresslbl" runat="server" Font-Bold="true" Font-Italic="true" Text="Address:"></asp:Label></td>
        <td>
        <asp:TextBox ID="updateaddtxt" runat="server" 
                contentplaceholder="enter your new address here" TextMode="MultiLine" 
                Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="updateaddtxt" ErrorMessage="Address is required" 
                ValidationGroup="update"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td><asp:Label ID="updationcontactlbl" runat="server" Font-Bold="true" Font-Italic="true" Text="Contact Info.:"></asp:Label></td>
        <td> <asp:TextBox ID="updationcontactb" runat="server" contentplaceholder="enter your new contact no. here"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="updationcontactb" ErrorMessage="Contact no. is rquired" 
                ValidationGroup="update"></asp:RequiredFieldValidator>
                &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="updationcontactb" ErrorMessage="enter valid mobile no." 
                ValidationExpression="^[1-9][0-9]{9}$" ValidationGroup="update"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
    <td colspan="2" align="center">
        <asp:Button ID="updateusersubmitbtn" runat="server" Text="Submit" 
                             class="btn btn-primary" 
            onclick="updateusersubmitbtn_Click" ValidationGroup="update"  />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Label ID="errorlbl" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>
</asp:Panel>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
