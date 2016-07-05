using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.MobileControls;
using System.Web.UI.WebControls;

namespace Online_Bus_Ticket_Reservation_System
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        string pass;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void resetpasswordbtn_Click(object sender, EventArgs e)
        {
         
            int uid = Convert.ToInt32(Session["uid"]);
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
            {
                con.Open();
                string query = String.Format("select current_password from user_db where userid={0}", uid);
                SqlCommand command =new SqlCommand(query,con);
                using (SqlDataReader reader=command.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                             pass = reader.GetString(0);
                        }
                    }
                }
            }

            if ( pass == currentpasswdtxt.Text )
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
                {
                    con.Open();
                    string query = String.Format("update user_db set current_password='{0}',last_password='{1}' where userid={2} and current_password='{3}'", newpasswordtxtbox.Text, pass, uid, pass);
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
                }
                
            }
            else
            {
                errorlbl.Text = "The Current Password Is Not Valid";
            }
        }
    }
}