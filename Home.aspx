<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.Home" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
    <div class="page-header">
    <h2>Online Ticket Booking With Zero Booking Fees</h2>
    </div>
    <asp:Panel ID="Homepanel" runat="server">
    <div id="search">
    <table>
        <tr align="center">
        <td style="text-align: center">
            <p class="style5">
                From:</p>
            <asp:DropDownList ID="Sourceddl" runat="server" ToolTip="enter the source"
                Width="120px" AutoPostBack="True" 
                onselectedindexchanged="Sourceddl_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
        
        <td> <img alt="arrow" src="images/Arrow_comic_right_gray_T.png"
                style="height: 65px; width: 120px; margin-left: 50px;margin-right:50px"/></td>
                
         <td>
         <p class="style5">Destination:</p>
             <asp:DropDownList ID="Destinationddl" runat="server" 
                 ToolTip="enter the destination" Width="120px"
                 AutoPostBack="True" 
                 onselectedindexchanged="Destinationddl_SelectedIndexChanged" >
             </asp:DropDownList>
         </td>
        </tr>
        <tr>
        <td style="text-align: center">
          
            <p class="style5">Date Of Journey:</p>
        
            <asp:DropDownList ID="dateddl" runat="server" ToolTip="enter the date" 
                width="120px" onselectedindexchanged="dateddl_SelectedIndexChanged">
            </asp:DropDownList> 
       </td>
       <td style="text-align:center">
           

       </td>
        <td align"center">
   
           
           <asp:Button ID="SearchButton" runat="server" Text="Search" 
                class="btn btn-primary" style="margin-top:25px;" 
                onclick="SearchButton_Click" /> 
        </td>
        
             
        </tr>
        
        
    </table>
</div>
</asp:Panel>
</div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
