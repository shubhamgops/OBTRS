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
    public partial class UpdateUserInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
            {
                if (!IsPostBack)
                {
                    int uid = Convert.ToInt32(Session["uid"]);
                    con.Open();
                    string query = String.Format("select name,email_id,address,contact_no from user_db where userid={0}", uid);
                    SqlCommand Command = new SqlCommand(query, con);
                    using (SqlDataReader reader = Command.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {

                                string name = reader.GetString(0);
                                string email = reader.GetString(1);
                                string add = reader.GetString(2);
                                string cont = reader.GetString(3);
                                updatinnamelbl1.Text = name;
                                updationemailtb.Text = email;
                                updateaddtxt.Text = add;
                                updationcontactb.Text = cont;
                            }
                        }
                    }
                }
                
            }   
        }

        protected void updateusersubmitbtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
            {
                int uid = Convert.ToInt32(Session["uid"]);
                con.Open();
                string query = String.Format("update user_db set email_id='{0}',address='{1}',contact_no='{2}' where userid={3}",updationemailtb.Text,updateaddtxt.Text,updationcontactb.Text,uid);
                SqlCommand Command = new SqlCommand(query, con);
                int i = Command.ExecuteNonQuery();
                if (i==1)
                {
                    errorlbl.Text = "Information Updated Successfully.";
                }
                else
                {
                    errorlbl.Text = "Something Went Wrong.";
                }
                updateaddtxt.Text = "";
                updationcontactb.Text = "";
                updationemailtb.Text = "";
            }
        }
    }
}