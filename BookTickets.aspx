<%@ Page Title="Book Tickets" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookTickets.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.BookTickets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
<asp:Panel ID="Bookingticketpanel" runat="server">
<div class="page-header">
<h3>Ticket Booking</h3>
</div>
<div class="col-md-6">
    <asp:Label ID="sourcelbl" runat="server" Text="Source:" Font-Bold="false" 
        style=" margin-right:50px  ;margin-bottom:30px" CssClass="style1"></asp:Label>
    <asp:TextBox ID="sourcetxt" runat="server" 
        style="padding-right:30px; margin-bottom:30px" Enabled="False" ></asp:TextBox>
    <br />
    <asp:Label ID="destlbl" runat="server" Text="Destination:" Font-Bold="false" 
        style=" margin-right:25px;margin-bottom:30px" CssClass="style1"></asp:Label>
    <asp:TextBox ID="desttxt" runat="server" 
        style="padding-right:30px; margin-bottom:30px" Enabled="False"></asp:TextBox>
    <br />
    <asp:Label ID="datelbl" runat="server" Text="Date Of depart:" Font-Bold="false" 
        style="margin-bottom:30px" CssClass="style1"></asp:Label>
    <asp:TextBox ID="datetxt" runat="server" 
        style="padding-right:30px; margin-bottom:30px" Enabled="False"></asp:TextBox>
    <br />
    <asp:Label ID="timelbl" runat="server" Text="Time:" Font-Bold="false" 
        style="margin-right:60px;margin-bottom:30px" CssClass="style1"></asp:Label>
    <asp:DropDownList ID="timeddl" runat="server" Width="204px" Height="26px" 
        style="padding-right:30px; margin-bottom:30px" AutoPostBack="True" 
        Enabled="False" >
    </asp:DropDownList>
    <br />
    <asp:Label ID="Seatslbl" runat="server" Text="Seats:" Font-Bold="false" 
        style=" margin-right:55px;margin-bottom:30px" CssClass="style1"></asp:Label>
    <asp:TextBox ID="seatstxt" runat="server" 
        style="padding-right:30px; margin-bottom:30px" Enabled="False"></asp:TextBox>
     <br />
    <asp:Label ID="Ratelbl" runat="server" Text="Rent:" Font-Bold="False" 
        style=" margin-right:60px;margin-bottom:30px" CssClass="style1"></asp:Label>
    <asp:TextBox ID="Ratetxt" runat="server" 
        style="padding-right:30px; margin-bottom:30px" Enabled="False"></asp:TextBox>
</div>
<div class="col-md-6">
        <asp:Label ID="Ticketnolbl" runat="server" Text="Ticket No:" Font-Bold="False" 
            style=" margin-right:60px;margin-bottom:30px" CssClass="style1"></asp:Label>
        <asp:TextBox ID="Tickettxt" runat="server" 
            style="padding-right:30px; margin-bottom:30px" Enabled="False" 
           ></asp:TextBox>
            <br />
        <asp:Label ID="Namelbl" runat="server" Text="Name:" Font-Bold="False" 
            style=" margin-right:82px;margin-bottom:30px" CssClass="style1"></asp:Label>
        <asp:TextBox ID="Nametxt" runat="server" 
            style="padding-right:30px; margin-bottom:30px" Enabled="True"></asp:TextBox>
             <asp:RequiredFieldValidator ID="Nameval" runat="server" 
            ControlToValidate="Nametxt" ErrorMessage="*" ValidationGroup="printgroup"></asp:RequiredFieldValidator>
             <br />
        <asp:Label ID="contactnolbl" runat="server" Text="Contact No:" Font-Bold="False" 
            style=" margin-right:48px;margin-bottom:30px" CssClass="style1"></asp:Label>
        <asp:TextBox ID="contactnotxt" runat="server" 
            style="padding-right:30px; margin-bottom:30px" Enabled="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="contactval" runat="server" 
            ControlToValidate="contactnotxt" ErrorMessage="*" ValidationGroup="printgroup"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rangephnumber" Text="Invalid Number" Type="Double" MaximumValue="10000000000"
              MinimumValue="1000" ControlToValidate="contactnotxt" runat="server" 
            ValidationGroup="printgroup" />
            <br />
            <asp:Label ID="totalseatlbl" runat="server" Text="Total Seats:" Font-Bold="False" 
            style=" margin-right:60px;margin-bottom:30px" CssClass="style1"></asp:Label>
            <asp:Label ID="totalseatlbl1" runat="server" 
            style="padding-right:30px; margin-bottom:30px" Enabled="False"></asp:Label>
            <br /><br />
            <asp:Label ID="totalrentlbl" runat="server" Text="Total Rent:" Font-Bold="False" 
            style=" margin-right:60px;margin-bottom:30px" CssClass="style1"></asp:Label>
            <asp:Label ID="totalrentlbl1" runat="server" 
            style="padding-right:30px; margin-bottom:30px" Enabled="False"></asp:Label>
            <br /><br />
            <asp:Label ID="BusNolbl" runat="server" Text="Bus No." Font-Bold="False" 
            style=" margin-right:80px;margin-bottom:30px" CssClass="style1"></asp:Label>
            <asp:Label ID="BusNolbl1" runat="server" 
            style="padding-right:30px; margin-bottom:30px" Enabled="False"></asp:Label>
</div>  
<asp:Panel ID="Bookingticketpanel2" runat="server" >
 <table width="100%">  <tr align="center"> <td>
     <asp:Button ID="printbtn" 
         runat="server" Text="Confirm" 
                           class="btn btn-primary" ValidationGroup="printgroup" 
         onclick="confirmbtn_Click" /></td>
                             </tr>
   </table>
</asp:Panel>
</div>
</asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
