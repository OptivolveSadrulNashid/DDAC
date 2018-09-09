using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DDAC
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user_name = this.TextBox1.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ddacassignmentConnectionString"].ConnectionString);
            con.Open();
            string query = "SELECT * FROM Users WHERE user_name='" + user_name + "'";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.CommandType = CommandType.Text;
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                Label1.Text = "Username is already exist. Please choose another one.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                this.SqlDataSource1.Insert();
                Response.Redirect("login.aspx");
            }
        }
    }
}