using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if the user is logged redirect to Booking Page
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("Booking.aspx");
            }
        }
    }
}