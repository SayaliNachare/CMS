using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace CMS
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\CMS\CMS\App_Data\Database1.mdf;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btncontact_Click(object sender, EventArgs e)
        {
                
                con.Open();
                String str = "INSERT INTO contact(Name,EmailID,Phoneno,Subject,Message) VALUES('" + Name.Text + "','" + EmailID.Text + "','" + Phoneno.Text + "','" + Subject.Text + "','" + message.Text + "')";
                SqlCommand cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                con.Close();
            Response.Write("<script LANGUAGE='JavaScript'>alert('Thank You for contacting us')</script>") ;
                    Name.Text = "";
                    EmailID.Text = "";
                    Phoneno.Text = "";
                    Subject.Text = "";
                    message.Text = "";
        }
    }
}