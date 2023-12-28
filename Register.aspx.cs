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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if the user is logged redirect to Booking Page
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("Booking.aspx");
            }
        }

        protected void SubmitRegistration_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection sqlcon = new SqlConnection(@"Data Source=(local);Initial Catalog=hoteltrivago;Integrated Security=True");
                sqlcon.Open();

                // set gender
                string gender = male.Checked ? "male" : female.Checked ? "female" : "";

                // set known languages
                string languages_known = "";

                if (LangEnglish.Checked)
                {
                    languages_known += " " + LangEnglish.Text;
                }

                if (LangTelugu.Checked)
                {
                    languages_known += " " + LangTelugu.Text;
                }

                if (LangHindi.Checked)
                {
                    languages_known += " " + LangHindi.Text;
                }

                String query = "INSERT INTO userinfo VALUES" +
                    $"('{firstName.Text}', '{lastName.Text}', '{username.Text}', " +
                    $"'{gender}', '{password.Text}', '{email.Text}', '{phone.Text}', " +
                    $"'{address.Text}', {age.Text}, '{languages_known}', '{country.Text}');";

                SqlCommand cmd = new SqlCommand(query, sqlcon);
                cmd.ExecuteNonQuery();
                sqlcon.Close();

                Response.Redirect("/RegisterSuccess.aspx");
            } else {
                ErrorMessage.Text = "Please recheck the info you entered.";
            }
        }
    }
}