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
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("ProductID");
                dt.Columns.Add("ProductName");
                dt.Columns.Add("quantity");
                dt.Columns.Add("Price");
                dt.Columns.Add("totalprice");
                dt.Columns.Add("ProductImage");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\CMS\CMS\App_Data\Database1.mdf;Integrated Security=True;");
                        String myquery = "select * from product where ProductID=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["ProductID"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
                        dr["ProductName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["ProductImage"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["Price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("cart.aspx");

                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\CMS\CMS\App_Data\Database1.mdf;Integrated Security=True;");
                        String myquery = "select * from product where ProductID=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["ProductID"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
                        dr["ProductName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["ProductImage"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["Price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("cart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                    }


                }
                // Label2.Text = GridView1.Rows.Count.ToString();

            }
            Label2.Text = DateTime.Now.ToShortDateString();
            findorderid();
        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return gtotal;
        }
        public void findorderid()
        {
            String pass = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] mypass = new char[5];
            for (int i = 0; i < 5; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];

            }
            String orderid;
            orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

            Label1.Text = orderid;


        }

        public void saveaddress()
        {
            String updatepass = "insert into orderaddress(orderid,address,mobilenumber) values('" + Label1.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            SqlConnection s = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\CMS\CMS\App_Data\Database1.mdf;Integrated Security=True;");
            s.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatepass;
            cmd1.Connection = s;
            cmd1.ExecuteNonQuery();
            s.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];



            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                String updatepass = "insert into orderdetails(orderid,sno,productid,productname,price,quantity,dateoforder) values('" + Label1.Text + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["productid"] + ",'" + dt.Rows[i]["productname"] + "'," + dt.Rows[i]["price"] + "," + dt.Rows[i]["quantity"] + ",'" + Label2.Text + "')";
                SqlConnection s = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\CMS\CMS\App_Data\Database1.mdf;Integrated Security=True;");
                s.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = s;
                cmd1.ExecuteNonQuery();
                s.Close();

            }
            saveaddress();
            Response.Write("<script>alert('Order Successful')</script>");
            Response.Redirect("PlaceSuccessfully.aspx?orderid=" + Label1.Text);
        }
    }
 }