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
    public partial class AccountInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if the user is not logged redirect to Login Page
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("Login.aspx");
            }

            SqlConnection sqlcon = new SqlConnection(@"Data Source=(local);Initial Catalog=hoteltrivago;Integrated Security=True");
            sqlcon.Open();
            SqlDataAdapter adapter = new SqlDataAdapter();

            string query = "SELECT " +
                "first_name, last_name, username, gender, email, " +
                "phone, address, age, languages_known, country " +
                "FROM userinfo;";

            adapter.SelectCommand = new SqlCommand(query, sqlcon);
            DataTable table = new DataTable();
            adapter.Fill(table);

            GridView1.DataSource = table;
            GridView1.DataBind();

            sqlcon.Close();
        }

        protected void bookRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Booking.aspx");
        }
    }
}