<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PrintTicket.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.PrintTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">

    var gAutoPrint = true;

    function processPrint() {

        if (document.getElementById != null) {

            var html = '<html>\n<head>\n';

            if (document.getElementsByTagName != null) {

                var headTags = document.getElementsByTagName("head");

                if (headTags.length > 0) html += headTags[0].innerHTML;

            }

            html += '\n</head>\n<body>\n';

            var printReadyElem = document.getElementById("PrintArea");

            if (printReadyElem != null) html += printReadyElem.innerHTML;

            else {

                alert("Error, no contents.");

                return;

            }

            html += '\n</body>\n</html>';

            var printWin = window.open("", "processPrint");

            printWin.document.open();

            printWin.document.write(html);

            printWin.document.close();

            if (gAutoPrint) printWin.print();

        } else alert("Browser not supported.");

    }


</script> 
<%--<style type="text/css" media="print" >
body
{
font-size:12px;
}
#btnPrint
{
	display:none;
	}
</style>  --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container" >
    <div class="page-header">
        Print Ticket Now
    </div>
    <div id="PrintArea">
    <table class="table">
        <tr>
         <td>
             <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="Label2" runat="server" Text="shbuham gopale"></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label3" runat="server" Text="Contact No:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="Label4" runat="server" Text="8108939748"></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label5" runat="server" Text="Source:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="Label6" runat="server" Text="Mumbai"></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label7" runat="server" Text="Destination:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="Label8" runat="server" Text="Pune"></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label9" runat="server" Text="Date:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="Label10" runat="server" Text="10-12-16"></asp:Label>
         </td>
        </tr><tr>
         <td>
             <asp:Label ID="Label11" runat="server" Text="Time:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="Label12" runat="server" Text="4:00 am"></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label13" runat="server" Text="Seats"></asp:Label>
         </td>
         <td>
             <asp:Label ID="Label14" runat="server" Text="1,2,3"></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label15" runat="server" Text="Rate:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="Label16" runat="server" Text="Rs.600"></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label17" runat="server" Text="Ticket No."></asp:Label>
         </td>
         <td>
             <asp:Label ID="Label18" runat="server" Text="1231654123"></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label19" runat="server" Text="Total Seat:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="Label20" runat="server" Text="3"></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label21" runat="server" Text="Total Rent:"></asp:Label>
         </td>
         <td>
             <asp:Label ID="Label22" runat="server" Text="Rs. 1800"></asp:Label>
         </td>
        </tr>
        <tr>
         <td>
             <asp:Label ID="Label23" runat="server" Text="Bus No."></asp:Label>
         </td>
         <td>
             <asp:Label ID="Label24" runat="server" Text="rj 45610"></asp:Label>
         </td>
        </tr>
     </table>
    </div>
    <div>
   <%--     <input id="btnprint" type="button"  onclick="javascript:void(processPrint());" value="print"  class="btn btn-default"/>--%>
        <input id="Button1" type="button"  onclick="window.print();" value="print"  class="btn btn-default"/>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
