using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Online_Bus_Ticket_Reservation_System.App_code;

namespace Online_Bus_Ticket_Reservation_System
{
    public partial class UserRegistration2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           


        }

        protected void Confirmbtn_Click(object sender, EventArgs e)
        {
            string name = Convert.ToString(Session["name"]);
            string email = Convert.ToString(Session["email"]);
            DateTime dob = Convert.ToDateTime(Session["dob"]);
            int age = Convert.ToInt32(Session["age"]);
            string gender = Convert.ToString(Session["gender"]);
            string address = Convert.ToString(Session["address"]);
            string contactno = Convert.ToString(Session["contactno"]);
            Session.Clear();
           //create new user
            user user = new user(name, email, dob, gender,address,contactno,age,"user",usernametxtbox.Text,passwordtxtbox.Text,passwordtxtbox.Text);
            lblinfo.Text = ConnectionClass.RegisterUser(user);

        }

 
    }
}