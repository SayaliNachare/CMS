using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CMS
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtuser.Text == "Admin@gmail.com" || txtpass.Text == "Admin@123")
            {
                Response.Redirect("Admin/UserList.aspx");
            }
            else
            {
                Response.Redirect("home.aspx");
            }
        }
    }
}