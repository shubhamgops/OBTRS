using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Bus_Ticket_Reservation_System
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Sourceddl.Focus();
            if (!IsPostBack)
            {
                Sourceddl.Items.Add("--select--");
               

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
                {
                    con.Open();
                    string query = "select sourcestn from tour_db ";
                    SqlCommand Command = new SqlCommand(query, con);
                    using (SqlDataReader reader = Command.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                string source = reader.GetString(0);
                                Sourceddl.Items.Add(source);
                            }
                        }
                    }
                }
            }
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            if (dateddl.SelectedItem.Text=="--select--")
            {
                Response.Write("<script>alert('plz select Valid values')</script>");
            }
            else
            {
               
                Response.Redirect("BusSelection.aspx?Source=" + Server.UrlEncode(Sourceddl.SelectedItem.ToString()) + "&Destination=" + Server.UrlEncode(Destinationddl.SelectedItem.ToString()) + "&Date=" + Server.UrlEncode(dateddl.SelectedItem.ToString()));
            }
        }

        protected void Sourceddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            Destinationddl.Items.Clear();
            Destinationddl.Items.Add("--select--");
            if (Sourceddl.SelectedItem.Text == "--select--")
            {
                Destinationddl.Items.Clear();
                Response.Write("<script>alert('plz select Valid values')</script>");
            }
           
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
            {
                con.Open();
                string query = "select [destinationstn] from tour_db where [sourcestn]='" + Sourceddl.SelectedItem + "'";
                SqlCommand Command = new SqlCommand(query, con);
                using (SqlDataReader reader = Command.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            string destination = reader.GetString(0);
                            Destinationddl.Items.Add(destination);
                        }
                    }
                }
            }
        }

        protected void Destinationddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            dateddl.Items.Clear();
            dateddl.Items.Add("--select--");
            
          
            if (Destinationddl.SelectedItem.Text == "--select--")
            {
                dateddl.Items.Clear();
                Response.Write("<script>alert('plz select Valid values')</script>");
            }

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
            {
                con.Open();
                string query = "select dateofdepart from tour_db where [sourcestn]='" + Sourceddl.SelectedItem + "' and [destinationstn]='" + Destinationddl.SelectedItem + "'";
                SqlCommand Command = new SqlCommand(query, con);
                using (SqlDataReader reader = Command.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            string date = reader.GetString(0);
                            dateddl.Items.Add(date);
                        }
                    }
                }
            }
            
        }

        

        protected void dateddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}