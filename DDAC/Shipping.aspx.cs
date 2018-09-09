using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDAC
{
    public partial class Shipping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToString("d");
            Calendar1.Visible = false;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String status = "pending";
            int weight = int.Parse(this.TextBox3.Text);
            int cost = weight * 3;
            string user = (string)(Session["user_name"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ddacassignmentConnectionString"].ConnectionString);
            try
            {
                con.Open();
                String qurey = "INSERT INTO Shipping (departure_port, arrival_port, shipping_date, shipping_status, shipping_cost, shipping_details, user_name) VALUES (@Arrival_port, @Departure_port, @dates, @status, @cost, @details, @user)";
                SqlCommand cmd = new SqlCommand(qurey, con);
                cmd.Parameters.AddWithValue("@Arrival_port", Dropdownlist.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Departure_port", Dropdownlist1.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@dates", TextBox1.Text);
                cmd.Parameters.AddWithValue("@status", status);
                cmd.Parameters.AddWithValue("@cost", cost);
                cmd.Parameters.AddWithValue("@details", TextBox2.Text);
                cmd.Parameters.AddWithValue("@user", user);

                cmd.ExecuteNonQuery();

                Response.Redirect("Customerview.aspx");
                con.Close();

            }
            catch(Exception ex)
            {
                Response.Write("error " + ex.ToString());
            }
            

           
               
            
        }
    }
}