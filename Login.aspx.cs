using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservation
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if the user is logged redirect to Booking Page
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("Booking.aspx");
            }

            string user = Username.Text;
            string pass = Password.Text;

            if (user != "" && pass != "")
            {
                SqlConnection sqlcon = new SqlConnection(@"Data Source=(local);Initial Catalog=hoteltrivago;Integrated Security=True");
                sqlcon.Open();

                string query = "SELECT COUNT(*) FROM userinfo WHERE " +
                    $"username = '{user}' AND password = '{pass}';";


                SqlCommand cmd = new SqlCommand(query, sqlcon);

                int userCount = Convert.ToInt32(cmd.ExecuteScalar());

                if(userCount > 0) {
                    FormsAuthentication.SetAuthCookie(user, false);
                    Response.Redirect("/AccountInfo.aspx");
                } else {
                    loginErrorMsg.Text = "Please recheck the credentials.";
                }

                sqlcon.Close();
            }
        }
    }
}