using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDAC
{
    public partial class Changestatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DataTable dt = this.GetData();

                StringBuilder html = new StringBuilder();

                html.Append("<table border = '1'>");

                html.Append("<tr>");

                foreach (DataColumn column in dt.Columns)
                {
                    html.Append("<th>");
                    html.Append(column.ColumnName);
                    html.Append("</th>");

                }
                html.Append("</tr>");
                //building the data row
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        html.Append("<td>");
                        html.Append(row[column.ColumnName]);
                        html.Append("</td>");
                        html.Append("</tr>");
                    }
                    //table end
                    html.Append("</table>");

                    //PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
                }
            }

        }
        private DataTable GetData()
        {
            string cons = ConfigurationManager.ConnectionStrings["ddacassignmentConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cons))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * from Shipping"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }

                    }
                }
            }
        }
    }
}