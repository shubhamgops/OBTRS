using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Bus_Ticket_Reservation_System
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void resetpasswordbtn_Click(object sender, EventArgs e)
        {
           

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
            {
                string pass = Session["pass"].ToString();
                con.Open();
                string query = String.Format("update user_db set current_password='{0}',last_password='{1}' where username='{2}' or email_id='{3}'",newpasswordtxtbox.Text,pass,usernametxt.Text,usernametxt.Text);
                SqlCommand command = new SqlCommand(query, con);
                int q = command.ExecuteNonQuery();
                if (q == 1)
                {
                    errorlbl.Text = "The password is updated Successesfully.";
                }
                else
                {
                    errorlbl.Text = "Something went Wrong";
                }
                Session["pass"] = newpasswordtxtbox.Text;
            }
        }

        protected void usernametxt_TextChanged(object sender, EventArgs e)
        {
           
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
            {
                string pass="";
                con.Open();
                string query = String.Format("select current_password from user_db where username='{0}' or email_id='{1}'", usernametxt.Text, usernametxt.Text);
                SqlCommand command = new SqlCommand(query, con);
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            pass = reader.GetString(0);
                        }
                        errorlbl.Text = "";
                        Session["pass"] = pass;
                    }
                    else
                    {
                        errorlbl.Text = "the email or username is registered";
                    }
                }
            }
        }

    }
}