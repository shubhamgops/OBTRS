using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Bus_Ticket_Reservation_System
{
    public partial class Tickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void printticket_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow==null)
            {
                Response.Write("<script>alert('plz select a row to print a ticket.');</script>");
            }
            else
            {
                Response.Redirect("Print.aspx?Source=" + Server.UrlEncode(GridView1.SelectedRow.Cells[1].Text) + "&Destination=" + Server.UrlEncode(GridView1.SelectedRow.Cells[2].Text) + "&Date=" + Server.UrlEncode(GridView1.SelectedRow.Cells[3].Text) + "&Time=" + Server.UrlEncode(GridView1.SelectedRow.Cells[4].Text) + "&Seats=" + Server.UrlEncode(GridView1.SelectedRow.Cells[5].Text) + "&Rate=" + Server.UrlEncode(GridView1.SelectedRow.Cells[6].Text) + "&TicketNo=" + Server.UrlEncode(GridView1.SelectedRow.Cells[7].Text) + "&Name=" + Server.UrlEncode(GridView1.SelectedRow.Cells[8].Text) + "&ContactNo=" + Server.UrlEncode(GridView1.SelectedRow.Cells[9].Text) + "&TotalSeat=" + Server.UrlEncode(GridView1.SelectedRow.Cells[10].Text) + "&TotalRent=" + Server.UrlEncode(GridView1.SelectedRow.Cells[11].Text) + "&BusNo=" + Server.UrlEncode(GridView1.SelectedRow.Cells[12].Text));
            }
            

        }
    }
}