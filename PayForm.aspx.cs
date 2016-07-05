using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Online_Bus_Ticket_Reservation_System
{
    public partial class PayForm : System.Web.UI.Page
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
        public int i { get; set; }

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
            Amounttopaytxt.Text = TotalRent;

        }

        protected void Paybtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
            {
                con.Open();
                string query = String.Format("insert into transaction_db values('{0}','{1}','{2}','{3}')", nameofbankddl.SelectedValue, Accountholdernameltxt.Text, Accountnotxt.Text, Amounttopaytxt.Text);
                SqlCommand Command = new SqlCommand(query, con);
                i = Command.ExecuteNonQuery();
            }

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
            {
                int tid = Convert.ToInt32(Session["tourid"]);
                con.Open();
                string query = String.Format("select bookdseats from seats_db where tourseatid={0}", tid);
                SqlCommand command = new SqlCommand(query, con);
                string seats1 = command.ExecuteScalar().ToString();
                if (seats1 == "") seats1 = Seats;
                else seats1 += "," + Seats;
                query = String.Format("UPDATE seats_db SET bookdseats=@seats WHERE (tourseatid = {0})",tid);
                SqlCommand command1=new SqlCommand(query,con);
                command1.Parameters.Add("seats", seats1);
                command1.ExecuteNonQuery();
                var bookedseats = seats1.Split(',');
                int n = bookedseats.Length;
                query = string.Format("select totalseats from tour_db where tourid={0} ",tid);
                SqlCommand command2=new SqlCommand(query,con);
                int totalseats = Convert.ToInt32(command2.ExecuteScalar());
                int availseats = totalseats - n;
                query =
                    string.Format(
                        "update tour_db set bookedseats=@bookedseats,availableseats=@availableseats where tourid={0}",
                        tid);

                SqlCommand command3=new SqlCommand(query,con);
                command3.Parameters.Add("bookedseats", n);
                command3.Parameters.Add("availableseats", availseats);
                command3.ExecuteNonQuery();
            }



            if (i != 0)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
                {
                    con.Open();
                    int id = Convert.ToInt32(Session["uid"]);
                    int tid = Convert.ToInt32(Session["tourid"]);
                 
                    string query = String.Format("insert into booking_db values({0},{1},'{2}','{3}',@date,'{4}','{5}','{6}','{7}','{8}','{9}',{10},'{11}','{12}')", id, tid, Source, Destination, Time, Seats, Rate, TicketNo, Name, ContactNo, TotalSeat, TotalRent, BusNo);

            

                    SqlCommand Command = new SqlCommand(query, con);
                    Command.Parameters.Add("date", Date);
                    i = Command.ExecuteNonQuery();
                }
                Response.Redirect("Print.aspx?Source=" + Server.UrlEncode(Source) + "&Destination=" + Server.UrlEncode(Destination) + "&Date=" + Server.UrlEncode(Date) + "&Time=" + Server.UrlEncode(Time) + "&Seats=" + Server.UrlEncode(Seats) + "&Rate=" + Server.UrlEncode(Rate) + "&TicketNo=" + Server.UrlEncode(TicketNo) + "&Name=" + Server.UrlEncode(Name) + "&ContactNo=" + Server.UrlEncode(ContactNo) + "&TotalSeat=" + Server.UrlEncode(TotalSeat) + "&TotalRent=" + Server.UrlEncode(TotalRent) + "&BusNo=" + Server.UrlEncode(BusNo));
            }
            else
            {
                errorlbl.Visible = true;
            }

        }


    }
}