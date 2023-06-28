using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Windows.Forms;

namespace CMS
{
    public partial class forgot_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnrecover_Click(object sender, EventArgs e)
        {
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\source\repos\CMS\CMS\App_Data\Database1.mdf;Integrated Security=True;"))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT Email,Password FROM registeration Where Email= '" + txtemail.Text.Trim() + "'", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);
                    con.Close();
                }
                if (ds.Tables[0].Rows.Count > 0)
                {
                    MailMessage Msg = new MailMessage();
                    // Sender e-mail address.
                    Msg.From = new MailAddress(txtemail.Text);
                    // Recipient e-mail address.
                    Msg.To.Add(txtemail.Text);
                    Msg.Subject = "Your Password Details";
                    Msg.Body = "Hi, <br/>Please check your Login Detailss<br/><br/>Your Username: " + ds.Tables[0].Rows[0]["UserName"] + "<br/><br/>Your Password: " + ds.Tables[0].Rows[0]["Password"] + "<br/><br/>";
                    Msg.IsBodyHtml = true;
                    // your remote SMTP server IP.
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.Credentials = new System.Net.NetworkCredential("riyapravin581@gmail.com", "Riya@990503");
                    smtp.EnableSsl = true;
                    smtp.Send(Msg);
                    //Msg = null;
                    MessageBox.Show("Your Password Details Sent to your mail");
                    // Clear the textbox valuess
                    txtemail.Text = "";
                }
                else
                {
                    MessageBox.Show("The Email you entered not exists.");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught.", ex);
            }
        }
    }
}