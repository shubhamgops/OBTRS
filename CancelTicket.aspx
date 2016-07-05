<%@ Page Title="Cancel Ticket" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CancelTicket.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.CancelTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<d class="container"><div class="page-header">
<h3>Enter Your PNR No.</h3>
</div>
<asp:Panel ID="Cancelticketpanel" runat="server">
<div style="text-align:center">
<asp:TextBox ID="pnrtxtbox" runat="server" placeholder="Enter your PNR no."></asp:TextBox>
<asp:Button ID="pnrsubmitbtn" runat="server" Text="submit" 
                            class="btn btn-primary" 
        onclick="pnrsubmitbtn_Click"  />
    <asp:Panel ID="Cancelticketpanel1" runat="server">
        <div id="dvContents">
    <table class="table">
        <tr>
         <td>
             <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="namelbl" runat="server" Text=""></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label3" runat="server" Text="Contact No:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="contactlbl" runat="server" Text=""></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label5" runat="server" Text="Source:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="sourcelbl" runat="server" Text=""></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label7" runat="server" Text="Destination:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="Destinationlbl" runat="server" Text=""></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label9" runat="server" Text="Date:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="datelbl" runat="server" Text=""></asp:Label>
         </td>
        </tr><tr>
         <td>
             <asp:Label ID="Label11" runat="server" Text="Time:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="timelbl" runat="server" Text=""></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label13" runat="server" Text="Seats"></asp:Label>
         </td>
         <td>
             <asp:Label ID="seatslbl" runat="server" Text=""></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label15" runat="server" Text="Rate:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="ratelbl" runat="server" Text=""></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label17" runat="server" Text="Ticket No."></asp:Label>
         </td>
         <td>
             <asp:Label ID="ticketnolbl" runat="server" Text=""></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label19" runat="server" Text="Total Seat:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="totalseatlbl" runat="server" Text=""></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label21" runat="server" Text="Total Rent:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="totalrentlbl" runat="server" Text=""></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label23" runat="server" Text="Bus No."></asp:Label>
         </td>
         <td>
             <asp:Label ID="busnolbl" runat="server" Text=""></asp:Label>
         </td>
        </tr>
  
     </table>
    </div>
    <div>
        <asp:Button ID="deltebtn" runat="server" Text="Cancel Ticket" 
                            class="btn btn-primary" onclick="deltebtn_Click"/>
    </div>
    </asp:Panel>

</div>
</asp:Panel>
    <div style="text-align: center"> <asp:Label ID="errorlbl" runat="server" ForeColor="Red"></asp:Label></div> 
</div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
