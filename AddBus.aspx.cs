using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Online_Bus_Ticket_Reservation_System.App_code;

namespace Online_Bus_Ticket_Reservation_System
{
    public partial class AddCoffee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["type"] != "administrator")
            {
                Response.Redirect("~/login.aspx");
            }
            for (int i = 0; i < 121; i++)
            {
                noofseatslb.Items.Add(i.ToString());
            }

        }

        protected void savebtn_Click(object sender, EventArgs e)
        {
            try
            {
                string busno = busnotxtbox.Text;
                string bustype = bustypedd.SelectedValue;
                int noofseats =Convert.ToInt32(noofseatslb.SelectedValue);
                bus bus = new bus(busno, bustype, noofseats);
                ConnectionClass.AddBus(bus);
                errorlbl.Text = "data uploaded successfully";
                Response.Redirect("~/BusOverview.aspx");

            }
            catch (Exception t)
            {

                errorlbl.Text = t.StackTrace ;
               
            }
        }
    }
}