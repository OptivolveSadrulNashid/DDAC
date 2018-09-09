using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace DDAC
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user_name = this.TextBox1.Text;
            string user_password = this.TextBox2.Text;
            String user_type = this.Dropdownlist.Text;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ddacassignmentConnectionString"].ConnectionString);

            con.Open();
            string query = "SELECT * FROM users WHERE user_name='" + user_name + "' AND user_password='" + user_password + "' AND user_type='"+ user_type +"'";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.CommandType = CommandType.Text;
            //SqlDataReader dr = cmd.ExecuteReader();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            //con.Open();
            int i = cmd.ExecuteNonQuery();
            //con.Close();

            if (dt.Rows.Count > 0 && user_type=="customer")
            {
                this.Session["user_name"] = user_name;
                Response.Redirect("Customerview.aspx");
            }
            else if (dt.Rows.Count > 0 && user_type == "staff")
            {
                this.Session["user_name"] = user_name;
                Response.Redirect("Changestatus.aspx");
            }
            else
            {
                Label1.Text = "Your username and password is incorrect";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

            con.Close();

        }
    }
}