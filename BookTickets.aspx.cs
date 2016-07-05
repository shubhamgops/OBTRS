using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Online_Bus_Ticket_Reservation_System
{
    public partial class BookTickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            sourcetxt.Text = Request.QueryString["Source"];
            desttxt.Text = Request.QueryString["Destination"];
            datetxt.Text = Request.QueryString["Date"];
            timeddl.Items.Add(Request.QueryString["Time"]);
            seatstxt.Text = Request.QueryString["Seats"];
            Ratetxt.Text = Request.QueryString["Rate"];
            Random random = new Random();
            Random random2 = new Random();
            Tickettxt.Text = random.Next(0xc350).ToString() + random2.Next(0x85fa7).ToString();
            int num = this.seatstxt.Text.Split(new char[] { ',' }).Length;
            totalseatlbl1.Text = num.ToString();
            if (seatstxt.Text == "") { totalseatlbl1.Text = "0"; };
            try
            {
                totalrentlbl1.Text = (num * int.Parse(this.Ratetxt.Text.ToString())).ToString();
            }
            catch (FormatException ) { totalrentlbl1.Text = ""; }
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
            {
                con.Open();
                string query = String.Format("select busno from tour_db where [sourcestn]='{0}' and [destinationstn]='{1}' and dateofdepart='{2}' and time='{3}'", sourcetxt.Text, desttxt.Text, datetxt.Text, timeddl.Text);
                SqlCommand Command = new SqlCommand(query, con);
                using (SqlDataReader reader = Command.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {

                            string busno = reader.GetString(0);
                            BusNolbl1.Text = busno;
                        }
                    }
                }
            }
        }

        protected void confirmbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("PayForm.aspx?Source=" + Server.UrlEncode(sourcetxt.Text) + "&Destination=" + Server.UrlEncode(desttxt.Text) + "&Date=" + Server.UrlEncode(datetxt.Text) + "&Time=" + Server.UrlEncode(timeddl.SelectedItem.ToString()) + "&Seats=" + Server.UrlEncode(seatstxt.Text) + "&Rate=" + Server.UrlEncode(Ratetxt.Text)+"&TicketNo="+Server.UrlEncode(Tickettxt.Text)+"&Name="+Server.UrlEncode(Nametxt.Text)+"&ContactNo="+Server.UrlEncode(contactnotxt.Text)+"&TotalSeat="+Server.UrlEncode(totalseatlbl1.Text)+"&TotalRent="+Server.UrlEncode(totalrentlbl1.Text)+"&BusNo="+Server.UrlEncode(BusNolbl1.Text));
        }

      

    }
}