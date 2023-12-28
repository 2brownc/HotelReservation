using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Reflection.Emit;

namespace HotelReservation
{
    public partial class BookInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if the user is not logged redirect to Login Page
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("Login.aspx");
            }

            string username = HttpContext.Current.User.Identity.Name;
            welcomeText.Text = $"Hi, {username}!";

            SqlConnection sqlcon = new SqlConnection(@"Data Source=(local);Initial Catalog=hoteltrivago;Integrated Security=True");
            sqlcon.Open();
            SqlDataAdapter adapter = new SqlDataAdapter();

            string query1 = "SELECT * FROM bookinginfo WHERE " +
                $"username = '{username}';";

            adapter.SelectCommand = new SqlCommand(query1, sqlcon);
            DataTable table1 = new DataTable();
            adapter.Fill(table1);


            GridView1.DataSource = table1;
            GridView1.DataBind();

            string query2 = "SELECT * FROM bookinginfo WHERE " +
                $"username != '{username}';";

            adapter.SelectCommand = new SqlCommand(query2, sqlcon);
            DataTable table2 = new DataTable();
            adapter.Fill(table2);


            GridView2.DataSource = table2;
            GridView2.DataBind();
        }
    }
}