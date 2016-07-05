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
    public partial class FeedBack : System.Web.UI.Page
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
                    string query = String.Format("select name,email_id,contact_no from user_db where userid={0}", uid);
                    SqlCommand Command = new SqlCommand(query, con);
                    using (SqlDataReader reader = Command.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {

                                string name = reader.GetString(0);
                                string email = reader.GetString(1);
                                string cont = reader.GetString(2);
                                namelbl.Text = name;
                                emailbl.Text = email;
                                contactnolbl.Text = cont;

                            }
                        }
                    }
                }

            }
        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            if (subjectddl.SelectedValue.ToString()=="--select--")
            {
                Response.Write("<script>plz select valid subject for feedback</script>");
            }
            else
	        {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bus booking DBConnectionString1"].ToString()))
            {
               
              
                    int uid = Convert.ToInt32(Session["uid"]);
                    con.Open();
                    string query = String.Format("insert into feedback_db values('{0}','{1}','{2}','{3}','{4}')",namelbl.Text,emailbl.Text,contactnolbl.Text,subjectddl.SelectedValue.ToString(),commenttxt.Text);
                    SqlCommand Command = new SqlCommand(query, con);
                    int i=Command.ExecuteNonQuery();
                    if (i==1)
	                {
		              errorlbl.Text="Feedback submited successfully";
	                }
                    else
	                {
                        errorlbl.Text="Something Went Wrong";
	                }   
               

            }     
        	}
        }
    }
}