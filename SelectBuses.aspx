﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SelectBuses.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.SelectBuses" %>
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
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <h2> Choose seats by clicking the corresponding seat in the layout below:</h2>
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
        <input type="button" id="btnShowNew" value="Show Selected Seats" />
        <input type="button" id="btnShow" value="Show All" />           
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script type="text/javascript" src="Scripts/jquery-1.4.1.min.js"></script>
    <script type="text/javascript">

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
        var bookedSeats = [5, 10, 25];
        init(bookedSeats);


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
            });
            sweetAlert(str.join(','));
        })
</script>
</asp:Content>
