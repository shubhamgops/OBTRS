using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Bus_Ticket_Reservation_System
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                lblloginlogout.Text = "Welcome " + Session["login"].ToString();
                lblloginlogout.Visible = true;
                LinkButton2.Visible = false;
                managementlinkbtn.Visible = false;
                
                BookeTicketslnk.Visible = true;
                Canceltickectlnk.Visible = true;
                profilelinkbtn.Visible = true;
                feedbacklnk.Visible = true;

                LinkButton1.Text = "Sign Out";
                if ((string)Session["type"] == "administrator")
                {
                    managementlinkbtn.Visible = true;
                }
            }
            else
            {
                managementlinkbtn.Visible = false;
                profilelinkbtn.Visible = false;
                feedbacklnk.Visible = false;
                Canceltickectlnk.Visible = false;
                BookeTicketslnk.Visible = false;
                lblloginlogout.Visible = true;
                LinkButton1.Text = "Sign In";
            }
          
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //user logs in
            if (LinkButton1.Text=="Sign In")
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                //users log out
                Session.Clear();
                Response.Redirect("~/Home.aspx");
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserRegistration1.aspx");
        }
    }
}