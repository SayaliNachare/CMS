using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace CMS.Admin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        static String imagelink;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getproductid();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (uploadimage() == true)
            {
                String query = "insert into product(ProductID,ProductName,Price,ProductImage) values(" + Label1.Text + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + imagelink + "')";
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\CMS\CMS\App_Data\Database1.mdf;Integrated Security=True;");
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Product Has Been Successfully Saved')</script>");
                getproductid();
                TextBox1.Text = "";
                TextBox2.Text = "";
            }

        }

        private Boolean uploadimage()
        {
            Boolean imagesaved = false;
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype == "image/jpeg")
                {
                    FileUpload1.SaveAs(Server.MapPath("~/Admin/images/") + Label1.Text + ".jpg");
                    FileUpload1.SaveAs(Server.MapPath("~/images/") + Label1.Text + ".jpg");
                    imagelink = "images/" + Label1.Text + ".jpg";
                    imagesaved = true;
                }
                else
                {
                    Response.Write("<script>alert('Kindly Upload JPEG Format Image Only')</script>");
                }

            }

            else
            {
                Response.Write("<script>alert('You have not selected any file - Browse and Select File First')</script>");
            }

            return imagesaved;

        }
        public void getproductid()
        {
            SqlConnection scon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\CMS\CMS\App_Data\Database1.mdf;Integrated Security=True;");
            String myquery = "select ProductID from product";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            scon.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                Label1.Text = "1001";

            }
            else
            {



                SqlConnection scon1 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\CMS\CMS\App_Data\Database1.mdf;Integrated Security=True;");
                String myquery1 = "select max(ProductID) from product";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = scon1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                Label1.Text = ds1.Tables[0].Rows[0][0].ToString();
                int a;
                a = Convert.ToInt16(Label1.Text);
                a = a + 1;
                Label1.Text = a.ToString();
                scon1.Close();
            }
        }
    }
}