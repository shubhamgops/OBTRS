using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Online_Bus_Ticket_Reservation_System
{
    public partial class BusSelection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
            sourcetxt.Text=Request.QueryString["Source"];
            desttxt.Text = Request.QueryString["Destination"];
            datetxt.Text = Request.QueryString["Date"];

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
            {
                con.Open();
                string query = String.Format("select tourid from tour_db where sourcestn='{0}' and destinationstn='{1}' and dateofdepart='{2}'", sourcetxt.Text, desttxt.Text, datetxt.Text);
                SqlCommand Command = new SqlCommand(query, con);
                int n=Convert.ToInt32(Command.ExecuteScalar());
                Session["tourid"] = n;
                query = string.Format("select bookdseats from seats_db where tourseatid={0}", n);
                Command = new SqlCommand(query, con);
                using (SqlDataReader reader = Command.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            if (reader.IsDBNull(0))
                            {
                                string seats1 = null;
                                hiddentxtid.Text = seats1;
                            }
                            else
                            {
                                string seats = reader.GetString(0);
                                hiddentxtid.Text = seats;
                            }

                        }
                    }
                }
            }

            sourcetxt.Enabled = false;
            desttxt.Enabled = false;
            datetxt.Enabled = false;
            seatbookingPanel.Visible = false;
            Ratetxt.Enabled = false;

           if (!IsPostBack)
           {
               timeddl.Items.Add("--select--");
               using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
               {
                   con.Open();
                   string query = String.Format("select time from tour_db where sourcestn='{0}' and destinationstn='{1}' and dateofdepart='{2}' ", sourcetxt.Text, desttxt.Text, datetxt.Text);
                   SqlCommand Command = new SqlCommand(query, con);
                   using (SqlDataReader reader1 = Command.ExecuteReader())
                   {
                       if (reader1.HasRows)
                       {
                           while (reader1.Read())
                           {

                               string time = reader1.GetString(0);
                               timeddl.Items.Add(time);
                           }
                       }
                   }
               }
               
           }
           
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void timeddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            seatbookingPanel.Visible = true;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
            {
                con.Open();
                string query = String.Format("select rateperseat from tour_db where sourcestn='{0}' and destinationstn='{1}' and dateofdepart='{2}' and time='{3}'", sourcetxt.Text, desttxt.Text, datetxt.Text,timeddl.Text);
                SqlCommand Command = new SqlCommand(query, con);
                using (SqlDataReader reader = Command.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {

                            string rate = reader.GetString(0);
                            Ratetxt.Text = rate;
                        }
                    }
                }
            }
            if (timeddl.SelectedItem.Text=="--select--")
            {
                Response.Write("<script>alert('plz select valid value.')</script>");
                Ratetxt.Text = "";
                seatbookingPanel.Visible = false;
            }
           
        }

        protected void Gobtn_Click(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Write("<script>alert('You must logged in to proceed forward.')</script>");
            }
            else
            {
                Response.Redirect("BookTickets.aspx?Source=" + Server.UrlEncode(sourcetxt.Text) + "&Destination=" + Server.UrlEncode(desttxt.Text) + "&Date=" + Server.UrlEncode(datetxt.Text) + "&Time=" + Server.UrlEncode(timeddl.SelectedItem.ToString()) + "&Seats=" + Server.UrlEncode(seatstxt.Text) + "&Rate=" + Server.UrlEncode(Ratetxt.Text));
            } 
        }
    }
}