using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDAC
{
    public partial class Status : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                this.SqlDataSource1.Update();
                Response.Redirect("Changestatus.aspx");
            }
            catch (Exception ex)
            {
                 ex.ToString();
            }
            
        }
    }
}