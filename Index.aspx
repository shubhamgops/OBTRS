<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="slideshow_images/travel-bus-wallpaper-hd.jpg" alt="Chania" style="width:2040px;height:600px">
      <div class="carousel-caption">
        <%--<h3>Chania</h3>
        <p>The atmosphere in Chania has a touch of Florence and Venice.</p>--%>
      </div>
    </div>

    <div class="item">
      <img src="slideshow_images/SVLL Connect Scania Bus interiors.jpg" alt="Chania" style="width:2040px;height:600px">
      <div class="carousel-caption">
        <%--<h3>Chania</h3>
        <p>The atmosphere in Chania has a touch of Florence and Venice.</p>--%>
      </div>
    </div>

    <div class="item">
      <img src="slideshow_images/Setra_S_417_12.jpg" alt="Flower" style="width:2040px;height:600px">
      <div class="carousel-caption">
       <%-- <h3>Flowers</h3>
        <p>Beatiful flowers in Kolymbari, Crete.</p>--%>
      </div>
    </div>

    <div class="item">
      <img src="slideshow_images/Roseberry_Travel_coach_(M100_RTL)_2004_Setra_S315GT-HD,_2012_Teeside_Running_Day.jpg" alt="Flower" style="width:2040px;height:600px">
      <div class="carousel-caption">
       <%-- <h3>Flowers</h3>
        <p>Beatiful flowers in Kolymbari, Crete.</p>--%>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
