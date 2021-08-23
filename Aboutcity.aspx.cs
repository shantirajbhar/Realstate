using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Aboutcity : System.Web.UI.Page
{
    private object clintName;

    protected void Page_Load(object sender, EventArgs e)
    {
        string slugname = Request.QueryString["slugname"];

        SqlConnection conn = null;
        string strcon = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
        conn = new SqlConnection(strcon);

        string sql = "select  id,propertyname,minimumprice,maximumprice,uploadphoto,facebookurl,instagram,whatsapp,youtube,areasqft,bedrooms,bathrooms,garage,propertylist,ihave,propertytype,available,googleurl,propshort,proplong,nearby,land_mark,city,pincode,fulladdress,slugname from realstate where slugname  = '"+ slugname + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        singleProList.DataSource = dt;
        singleProList.DataBind();

        


    }

    protected void clientform(object source, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
        SqlConnection conn = null;
        try
        {
            RepeaterItem item = (source as Button).NamingContainer as RepeaterItem;
            string client = (item.FindControl("clintName") as TextBox).Text;
            int proid = Convert.ToInt32((item.FindControl("propid") as TextBox).Text);
            string email = (item.FindControl("email") as TextBox).Text;
            string phone = (item.FindControl("phoneNo") as TextBox).Text;
            string message = Request.Form["message"];

            conn = new SqlConnection(strcon);
            string sql = "insert into enquiry(clientname,email,phoneno,message,prop_id) values ('" + client + "','" + email + "','" + phone + "','" + message + "','"+ proid + "')";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);

            int status = cmd.ExecuteNonQuery();
            if (status > 0)
            {
                Console.WriteLine("true");
            }
            else
            {
                Console.WriteLine("False");
            }


        }
        catch(Exception ex)
        {
            Console.WriteLine(ex);
        }
        finally
        {
            conn.Close();
        }




    }
}