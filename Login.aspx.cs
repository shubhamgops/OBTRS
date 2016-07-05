using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Online_Bus_Ticket_Reservation_System.App_code;

namespace Online_Bus_Ticket_Reservation_System
{

    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            usernamelogintxtbox.Focus();
            if (!IsPostBack)
            {
                Session["username"] = "null";
            }

        }

        protected void loginbtn_Click1(object sender, EventArgs e)
        {
            if (ViewState["attempt"] == null)
            {
                ViewState["attempt"] = 0;

            }

            user user = ConnectionClass.LoginUser(usernamelogintxtbox.Text, passwordLogintxtbox.Text);

            string sesusername = Session["username"].ToString();
            if (sesusername == usernamelogintxtbox.Text)
            {
                ViewState["attempt"] = Convert.ToInt32(ViewState["attempt"]) + 1;
            }
            else
            {
                ViewState["attempt"] = 0;
                Session["flag"] = "false";
            }
            if ((user != null) && (Session["flag"] != "true"))
            {
                //store login variables in session
                Session["login"] = user.username;
                Session["type"] = user.user_type;
                Session["uid"] = user.id;
                if ((string)Session["type"] == "administrator")
                {
                    Response.Redirect("~/BusOverview.aspx");
                }
                else
                {
                    Response.Redirect("~/Home.aspx");
                }

            }

            else
            {
                LblError.Text = "Sign In failed try using other username & password combination ";



            }

            if (Convert.ToInt32(ViewState["attempt"]) == 1)
            {
                LblError.Text = "you have only two more attempts to login.";
            }
            if (Convert.ToInt32(ViewState["attempt"]) >= 3)
            {
                LblError.Text = "the user is blocked for 30 miutes.";
                Session["flag"] = "true";
            }
            Session["username"] = usernamelogintxtbox.Text;

        }




    }
}