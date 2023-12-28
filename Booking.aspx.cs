using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace HotelReservation
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // check if the user is logged in
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void BookRoom_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection sqlcon = new SqlConnection(@"Data Source=(local);Initial Catalog=hoteltrivago;Integrated Security=True");
                sqlcon.Open();

                string ameneties = "";

                if (AmenitiesAC.Checked)
                {
                    ameneties += "AC";
                }

                if (AmenitiesComputer.Checked)
                {
                    ameneties += "Computer";
                }

                if (AmenitiesAC.Checked && AmenitiesComputer.Checked)
                {
                    ameneties = "AC & Computer";
                }

                string roomType = RoomDelux.Checked ? "Deluxe" : "";
                roomType = RoomOrdinary.Checked ? "Ordinary" : roomType;

                String query = "INSERT INTO bookinginfo VALUES" +
                    $"('{username.Text}', '{ameneties}', '{roomType}');";

                SqlCommand cmd = new SqlCommand(query, sqlcon);
                cmd.ExecuteNonQuery();
                sqlcon.Close();

                Response.Redirect("/BookInfo.aspx");
            } else {
                ErrorMessage.Text = "Please recheck the info you entered.";
            }
        }
    }
}