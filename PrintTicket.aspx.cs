using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Bus_Ticket_Reservation_System
{
    public partial class PrintTicket : System.Web.UI.Page
    {
        public string Source { get; set; }
        public string Destination { get; set; }
        public string Date { get; set; }
        public string Time { get; set; }
        public string Seats { get; set; }
        public string Rate { get; set; }
        public string TicketNo { get; set; }
        public string Name { get; set; }
        public string ContactNo { get; set; }
        public string TotalSeat { get; set; }
        public string TotalRent { get; set; }
        public string BusNo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            Source = Request.QueryString["Source"];
            Destination = Request.QueryString["Destination"];
            Date = Request.QueryString["Date"];
            Time = Request.QueryString["Time"];
            Seats = Request.QueryString["Seats"];
            Rate = Request.QueryString["Rate"];
            TicketNo = Request.QueryString["TicketNo"];
            Name = Request.QueryString["Name"];
            ContactNo = Request.QueryString["ContactNo"];
            TotalSeat = Request.QueryString["TotalSeat"];
            TotalRent = Request.QueryString["TotalRent"];
            BusNo = Request.QueryString["BusNo"];
        }
    }
}