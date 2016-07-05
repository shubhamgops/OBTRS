<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="print.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.print" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link rel="stylesheet" type="text/css" href="css/print.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" >
    <div class="page-header">
        Print Ticket Now
    </div>
    <div id="dvContents">
     <div class="left">
            <img alt="" src="images/logo2.jpg" />
        </div>
        <div class="right">
            <span class="label">OBTRS.COM</span>
        </div>
        <div class="clear">
        </div>
        <hr />
        <div class="contents">
           
        
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
    </div>
    <div>
        <input id="btnPrint" type="button" value="print"  class="btn btn-default"/>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script src="jquery-1.11.3.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#btnPrint").click(function () {
                var contents = $("#dvContents").html();
                var frame1 = $('<iframe />');
                frame1[0].name = "frame1";
                frame1.css({ "position": "absolute", "top": "-1000000px" });
                $("body").append(frame1);
                var frameDoc = frame1[0].contentWindow ? frame1[0].contentWindow : frame1[0].contentDocument.document ? frame1[0].contentDocument.document : frame1[0].contentDocument;
                frameDoc.document.open();
                //Create a new HTML document.
                frameDoc.document.write('<html><head><title>Online Bus Ticket Reservation System</title>');
                frameDoc.document.write('</head><body>');
                //Append the external CSS file.
                frameDoc.document.write('<link rel="stylesheet" type="text/css" href="css/print.css" />');
                //Append the DIV contents.
                frameDoc.document.write(contents);
                frameDoc.document.write('</body></html>');
                frameDoc.document.close();
                setTimeout(function () {
                    window.frames["frame1"].focus();
                    window.frames["frame1"].print();
                    frame1.remove();
                }, 500);
            });
        });
    </script>
</asp:Content>
