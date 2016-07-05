using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Bus_Ticket_Reservation_System
{
    public partial class CancelTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            Cancelticketpanel1.Visible = false;
        }

        protected void pnrsubmitbtn_Click(object sender, EventArgs e)
        {
            Cancelticketpanel1.Visible = true;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
            {
                    con.Open();
                    string query = String.Format("SELECT source, destination, date, time, seats, rate, [ticket no], name, [Contact no], totalseat, totalrent, Busno FROM booking_db WHERE [ticket no]={0}",pnrtxtbox.Text);
                    SqlCommand Command = new SqlCommand(query, con);
                    using (SqlDataReader reader = Command.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {

                                string source = reader.GetString(0);
                                string destinaion = reader.GetString(1);
                                string date = reader.GetDateTime(2).ToShortDateString();
                                string time = reader.GetString(3);
                                string seats = reader.GetString(4);
                                string rate = reader.GetSqlMoney(5).ToString();
                                string ticketno = reader.GetString(6);
                                string name = reader.GetString(7);
                                string contactno = reader.GetString(8);
                                int totalseat = reader.GetInt32(9);
                                string totalrent = reader.GetSqlMoney(10).ToString();
                                string busno = reader.GetString(11);

                                sourcelbl.Text = source;
                                Destinationlbl.Text = destinaion;
                                datelbl.Text = date;
                                timelbl.Text = time;
                                seatslbl.Text = seats;
                                ratelbl.Text = rate;
                                ticketnolbl.Text = ticketno;
                                namelbl.Text = name;
                                contactlbl.Text = contactno;
                                totalseatlbl.Text = totalseat.ToString();
                                totalrentlbl.Text = totalrent;
                                busnolbl.Text=busno;


                            }
                        }
                    }
               

            }  
        }

        protected void deltebtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
            {
                con.Open();
                string query = String.Format("delete booking_db where [ticket no]='{0}'",pnrtxtbox.Text);
                SqlCommand Command = new SqlCommand(query, con);
                int i = Command.ExecuteNonQuery();
                if (i==1)
                {
                    errorlbl.Text = "Booking Canceled Successfully";
                }
                else
                {
                    errorlbl.Text = "Something Went Wrong";
                }


            } 
        }
    }
}