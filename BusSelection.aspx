<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BusSelection.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.BusSelection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
    #holder{    
    height:200px;    
    width:550px;
    background-color:#F5F5F5;
    border:1px solid #A4A4A4;
    margin-left:10px;   
    }
    #place {
    position:relative;
    margin:7px;
    }
    #place a{
    font-size:0.6em;
    }
    #place li
    {
     list-style: none outside none;
     position: absolute;   
    }    
    #place li:hover
    {
    background-color:yellow;      
    } 
    #place .seat{
    background:url("images/available_seat_img.gif") no-repeat scroll 0 0 transparent;
    height:33px;
    width:33px;
    display:block;   
    }
    #place .selectedSeat
    { 
    background-image:url("images/booked_seat_img.gif");          
    }
    #place .selectingSeat
    { 
    background-image:url("images/selected_seat_img.gif");        
    }
    #place .row-3, #place .row-4{
    margin-top:10px;
    }
    #seatDescription li{
    verticle-align:middle;    
    list-style: none outside none;
    padding-left:35px;
    height:35px;
    float:left;
    }
    .style1
    {
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
<div class="page-header">
<h3>Online Ticket Booking With zero fees</h3></div>
    
<div class="col-md-6">
    <asp:Label ID="sourcelbl" runat="server" Text="Source:" Font-Bold="false" 
        style=" margin-right:50px  ;margin-bottom:30px" CssClass="style1"></asp:Label>
    <asp:TextBox ID="sourcetxt" runat="server" ontextchanged="TextBox1_TextChanged" style="padding-right:30px; margin-bottom:30px"></asp:TextBox>
    <br />
    <asp:Label ID="destlbl" runat="server" Text="Destination:" Font-Bold="false" 
        style=" margin-right:25px;margin-bottom:30px" CssClass="style1"></asp:Label>
    <asp:TextBox ID="desttxt" runat="server" style="padding-right:30px; margin-bottom:30px"></asp:TextBox>
    <br />
    <asp:Label ID="datelbl" runat="server" Text="Date Of depart:" Font-Bold="false" 
        style="margin-bottom:30px" CssClass="style1"></asp:Label>
    <asp:TextBox ID="datetxt" runat="server" style="padding-right:30px; margin-bottom:30px"></asp:TextBox>
    <br />
    <asp:Label ID="timelbl" runat="server" Text="Time:" Font-Bold="false" 
        style="margin-right:60px;margin-bottom:30px" CssClass="style1"></asp:Label>
    <asp:DropDownList ID="timeddl" runat="server" Width="204px" Height="26px" 
        style="padding-right:30px; margin-bottom:30px" AutoPostBack="True" 
        onselectedindexchanged="timeddl_SelectedIndexChanged">
    </asp:DropDownList>
    <br />
    <asp:Label ID="Seatslbl" runat="server" Text="Seats:" Font-Bold="false" 
        style=" margin-right:55px;margin-bottom:30px" CssClass="style1"></asp:Label>
    <asp:TextBox ID="seatstxt" runat="server" CssClass="seattxt" 
        style="padding-right:30px; margin-bottom:30px;"></asp:TextBox>
     <asp:RequiredFieldValidator ID="seatsreq" runat="server" 
        ControlToValidate="seatstxt" ErrorMessage="Select Altleast One Seat" 
        ValidationGroup="gogroup"></asp:RequiredFieldValidator>
     <br />
    <asp:Label ID="Ratelbl" runat="server" Text="Rate:" Font-Bold="False" 
        style=" margin-right:60px;margin-bottom:30px" CssClass="style1"></asp:Label>
    <asp:TextBox ID="Ratetxt" runat="server" 
        style="padding-right:30px; margin-bottom:30px;"></asp:TextBox>
    <div>
        <asp:TextBox ID="hiddentxtid" runat="server" CssClass="hiddentxt"></asp:TextBox>
    </div>
</div>
<div class="col-md-6">
    <asp:Panel ID="seatbookingPanel" runat="server">
     <div class="page-header">   <h3> Choose seats by clicking the corresponding seat in the layout below:</h3> </div>
 
    <div id="holder"> 
        <ul  id="place">
        </ul>    
    </div>
    <div style="float:left;"> 
    <ul id="seatDescription">
        <li style="background:url('images/available_seat_img.gif') no-repeat scroll 0 0 transparent;">Available Seat</li>
        <li style="background:url('images/booked_seat_img.gif') no-repeat scroll 0 0 transparent;">Booked Seat</li>
        <li style="background:url('images/selected_seat_img.gif') no-repeat scroll 0 0 transparent;">Selected Seat</li>
    </ul>
    </div>
        <div style="clear:both;width:100%">
        <input type="button" id="btnShowNew" value="confirm selected seats" class="btn btn-primar" />
     <%--  <input type="button" id="btnShow" value="Show All" />--%>
        <asp:Button ID="Gobtn" runat="server" Text="Go" class="btn btn-primary" 
                onclick="Gobtn_Click" ValidationGroup="gogroup"  />          
        </div>
        </asp:Panel>
    </div>
 </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 <script type="text/javascript" src="Scripts/jquery-1.4.1.min.js"></script>
 <script type="text/javascript">

     $('.seattxt').attr("disabled", "disabled"); 
     var settings = {
         rows: 5,
         cols: 15,
         rowCssPrefix: 'row-',
         colCssPrefix: 'col-',
         seatWidth: 35,
         seatHeight: 35,
         seatCss: 'seat',
         selectedSeatCss: 'selectedSeat',
         selectingSeatCss: 'selectingSeat'
     };

     var init = function (reservedSeat) {
         var str = [], seatNo, className;
         for (i = 0; i < settings.rows; i++) {
             for (j = 0; j < settings.cols; j++) {
                 seatNo = (i + j * settings.rows + 1);
                 className = settings.seatCss + ' ' + settings.rowCssPrefix + i.toString() + ' ' + settings.colCssPrefix + j.toString();
                 if ($.isArray(reservedSeat) && $.inArray(seatNo, reservedSeat) != -1) {
                     className += ' ' + settings.selectedSeatCss;
                 }
                 str.push('<li class="' + className + '"' +
                                  'style="top:' + (i * settings.seatHeight).toString() + 'px;left:' + (j * settings.seatWidth).toString() + 'px">' +
                                  '<a title="' + seatNo + '">' + seatNo + '</a>' +
                                  '</li>');
             }
         }
         $('#place').html(str.join(''));
     };
     //case I: Show from starting
     //init();

     //Case II: If already booked
    // var a = "1,2,3,4";
     var a = $('.hiddentxt').val();
     var b = a.split(',').map(function (item) {
         return parseInt(item, 10);
     });
   //var bookedSeats = [5, 10, 15];
     init(b);
     $('.hiddentxt').hide();


     $('.' + settings.seatCss).click(function () {
         if ($(this).hasClass(settings.selectedSeatCss)) {
             sweetAlert('This seat is already reserved');
         }
         else {
             $(this).toggleClass(settings.selectingSeatCss);
         }
     });

     $('#btnShow').click(function () {
         var str = [];
         $.each($('#place li.' + settings.selectedSeatCss + ' a, #place li.' + settings.selectingSeatCss + ' a'), function (index, value) {
             str.push($(this).attr('title'));
         });
         sweetAlert(str.join(','));
         
     })

     $('#btnShowNew').click(function () {
         var str = [], item;
         $.each($('#place li.' + settings.selectingSeatCss + ' a'), function (index, value) {
             item = $(this).attr('title');
             str.push(item);
             $('.seattxt').removeAttr('disabled');
             $('.seattxt').val(str.join(','));
         });
         sweetAlert(str.join(','));
     })
</script>
</asp:Content>
