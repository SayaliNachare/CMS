using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace CMS
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string email = txtemail.Text.Trim();
            string pwd = txtpass.Text;
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\CMS\CMS\App_Data\Database1.mdf;Integrated Security=True;");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            // cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SELECT FirstName,Email,Password FROM registeration where Email='" + email + "' and Password='" + pwd + "'";
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session.Add("Username", dt.Rows[0][1].ToString());
                Session.Add("Email", dt.Rows[0][2].ToString());
                MessageBox.Show("Login successfull");
                Response.Redirect("home1.aspx", false);
            }
            else
            {
                MessageBox.Show("Invalid username or password");
            }
        }
    }
}