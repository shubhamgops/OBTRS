using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Online_Bus_Ticket_Reservation_System.App_code;

namespace Online_Bus_Ticket_Reservation_System
{
    public partial class Addtour : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["type"] != "administrator")
            {
                Response.Redirect("~/login.aspx");
            }
            if (!IsPostBack)
            {
                for (int i = 1; i <= 12; i++)
                {

                    ddlhr.Items.Add(i.ToString());
                }
                for (int i = 0; i <= 60; i++)
                {
                    ddlmn.Items.Add(i.ToString());
                }
                ddlampm.Items.Add("AM");
                ddlampm.Items.Add("PM");

                for (int i = 1; i <= 12; i++)
                {

                    ddlhr2.Items.Add(i.ToString());
                }
                for (int i = 0; i <= 60; i++)
                {
                    ddlmn2.Items.Add(i.ToString());
                }
                ddlampm2.Items.Add("AM");
                ddlampm2.Items.Add("PM");
            }
        }

        protected void savebtn_Click(object sender, EventArgs e)
        {
            int i;
            string time = string.Format("{0}.{1} {2}",ddlhr.SelectedValue,ddlmn.SelectedValue,ddlampm.SelectedValue);
             string reachtime = string.Format("{0}.{1} {2}",ddlhr2.SelectedValue,ddlmn2.SelectedValue,ddlampm2.SelectedValue);
            DateTime day = Convert.ToDateTime(dateofdeparttxt.Text);

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
            {
                con.Open();
                string query = String.Format("INSERT INTO tour_db ([sourcestn], [destinationstn], [rateperseat], time, reachtime,dateofdepart, busno, totalseats)VALUES('{0}', '{1}', '{2}','{3}', '{4}',@dateofdepart, '{5}', '{6}')",sourcestntxt.Text,deststntxt.Text,rateperseattxt.Text,time,reachtime,ddlbusno.SelectedValue,ddltotalseats.SelectedValue);
               
                SqlCommand Command = new SqlCommand(query, con);
                Command.Parameters.Add("dateofdepart", dateofdeparttxt.Text);
                 i = Command.ExecuteNonQuery();
                Command.Parameters.Clear();
                query=String.Format("select tourid from tour_db where sourcestn='{0}' and destinationstn='{1}' and dateofdepart='{2}'",sourcestntxt.Text,deststntxt.Text,dateofdeparttxt.Text);
                Command=new SqlCommand(query,con);
                int j=(int)Command.ExecuteScalar();
                query = String.Format("insert into seats_db values({0},'')",j);
                Command= new SqlCommand(query,con);
                i=Command.ExecuteNonQuery();
                
            }
            if (i==1)
            {
                errorlbl.Text = "tour uploaded successfully.";
            }
            else
            {
                errorlbl.Text = "something went wrong";
            }
        }

        
    }
}