<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FeedBack.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.FeedBack" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
            font-weight: bold;
            width: 302px;
        }
        .style3
        {
            width: 403px;
            text-align: left;
        }
        .style4
        {
            text-align: center;
        }
        .style5
        {
            width: 403px;
            text-align: center;
        }
    .style6
    {
        width: 19px;
        text-align: left;
    }
    .style7
    {
        width: 19px;
        text-align: center;
    }
    .style8
    {
        text-align: right;
        font-weight: bold;
        width: 302px;
        height: 30px;
    }
    .style9
    {
        width: 19px;
        text-align: left;
        height: 30px;
    }
    .style10
    {
        width: 403px;
        text-align: left;
        height: 30px;
    }
    .style11
    {
        height: 30px;
    }
    .style12
    {
        text-align: right;
        font-weight: bold;
        width: 302px;
        height: 32px;
    }
    .style13
    {
        width: 19px;
        text-align: left;
        height: 32px;
    }
    .style14
    {
        width: 403px;
        text-align: center;
        height: 32px;
    }
    .style15
    {
        height: 32px;
    }
    .style16
    {
        text-align: right;
        font-weight: bold;
        width: 302px;
        height: 43px;
    }
    .style17
    {
        width: 19px;
        text-align: left;
        height: 43px;
    }
    .style18
    {
        width: 403px;
        text-align: left;
        height: 43px;
    }
    .style19
    {
        height: 43px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style1">
        <tr>
            <td class="style8">
                Name:</td>
            <td class="style9">
            </td>
            <td class="style10">
                <asp:Label ID="namelbl" runat="server"></asp:Label>
            </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style8">
                Email:</td>
            <td class="style9">
            </td>
            <td class="style10">
                <asp:Label ID="emailbl" runat="server"></asp:Label>
            </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style8">
                Contact No:</td>
            <td class="style9">
            </td>
            <td class="style10">
                <asp:Label ID="contactnolbl" runat="server"></asp:Label>
            </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style16">
                Subject:</td>
            <td class="style17">
            </td>
            <td class="style18">
                <asp:DropDownList ID="subjectddl" runat="server" Height="30px" Width="147px">
                    <asp:ListItem>--select--</asp:ListItem>
                    <asp:ListItem>Bus Service</asp:ListItem>
                    <asp:ListItem>WebSite</asp:ListItem>
                    <asp:ListItem>Schedules</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style19">
                </td>
        </tr>
        <tr>
            <td class="style2">
                Comment:</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                <asp:TextBox ID="commenttxt" runat="server" Height="59px" TextMode="MultiLine" 
                    Width="395px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="commentvalidator" runat="server" 
                    ControlToValidate="commenttxt" ErrorMessage="plz input some comment" 
                    ValidationGroup="submit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style12">
                </td>
            <td class="style13">
                </td>
            <td class="style14">
                <asp:Label ID="errorlbl" runat="server" ForeColor="Red" 
                    style="text-align: center"></asp:Label>
                </td>
            <td class="style15">
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style7">
                         &nbsp;</td>
            <td class="style5">
                         <asp:Button ID="submitbtn" runat="server" Text="Submit" 
                             class="btn btn-primary" onclick="submitbtn_Click" 
                             ValidationGroup="submit" />
                             </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
