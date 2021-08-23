using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_viewproperty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = null;
        string strcon = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
        conn = new SqlConnection(strcon);

        string sql = "select id, propertyname,whatsapp from realstate where active = 'Y' ";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        viewproperty.DataSource = dt;
        viewproperty.DataBind();
    }
}