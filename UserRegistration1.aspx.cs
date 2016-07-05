using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Bus_Ticket_Reservation_System
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DateTime year = DateTime.Today;
            if (!IsPostBack)
            {
                for (int i = 1990; i <= 2000; i++)
                {
                    ddlyear.Items.Add(i.ToString());
                }
                for (int i = 1; i < 13; i++)
                {
                    ddlmonth.Items.Add(i.ToString());
                }
                for (int i = 1; i < 32; i++)
                {
                    ddlday.Items.Add(i.ToString());
                }
            }
            
        }

        protected void regsubbtn_Click(object sender, EventArgs e)
        {
            
            Session["name"] = nametextbox.Text;
            Session["email"] = emailtextbox.Text;
            Session["dob"] = dateofbirthtxt.Text;
            Session["age"] = agetextbox.Text;
            Session["gender"] = genderradiobtnlist.SelectedValue;
            Session["address"] = addrtextbox.Text;
            Session["contactno"] = contacttextbox.Text;
            Response.Redirect("~/UserRegistration2.aspx");
        }

        protected void ddlyear_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            string birth_date = string.Format("{0}/{1}/{2}", ddlday.SelectedValue, ddlmonth.SelectedValue, ddlyear.SelectedValue);
            try
            {
                DateTime dt = Convert.ToDateTime(birth_date);
                dateofbirthtxt.Text = dt.ToShortDateString();
                agetextbox.Text = GetAge(dt).ToString();
            }
            catch (FormatException )
            {
                Response.Write("<script>alert('plz select a valid date')</script>");
            }
        }

        public static Int32 GetAge(DateTime dt)
        {
            var today = DateTime.Today;
           
            var a = (today.Year * 100 + today.Month) * 100 + today.Day;
            var b = (dt.Year * 100 + dt.Month) * 100 + dt.Day;

            return (a - b) / 10000;
        }

    }
}