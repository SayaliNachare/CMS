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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\source\repos\CMS\CMS\App_Data\Database1.mdf;Integrated Security=True;");
                SqlCommand cmd = new SqlCommand();
                Guid guid;
                guid = Guid.NewGuid();
                string sql = "INSERT INTO registeration (FirstName,Email,Password)";
                sql += "VALUES (@FirstName,@email,@password)";
                cmd.Parameters.AddWithValue("@FirstName", First.Text);
                cmd.Parameters.AddWithValue("@email", EmailID.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password.Text);
                cmd.Connection = con;
                cmd.CommandText = sql;
                con.Open();
                try
                {
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Registered successfully.");
                    First.Text = "";
                    EmailID.Text = "";
                    password.Text = "";
                }
                catch (Exception)
                {
                    MessageBox.Show("Registeration unsuccessfully.");
                }
            }
        }
    }
}