using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_viewen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            SqlConnection conn = null;
            string strcon = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
            conn = new SqlConnection(strcon);

            string sql = "select en.id,en.clientname,en.email,en.phoneno,en.message,rel.propertyname from enquiry en JOIN realstate rel ON rel.id=en.prop_id";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            enquiryList.DataSource = dt;
            enquiryList.DataBind();
        }
        else
        {
            Response.Redirect("../login.aspx");
        }

    }
}