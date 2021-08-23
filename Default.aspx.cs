using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = null;
        string strcon = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
        conn = new SqlConnection(strcon);

        string sql = "select  id,propertyname,minimumprice,maximumprice,uploadphoto,facebookurl,instagram,whatsapp,youtube,areasqft,bedrooms,bathrooms,garage,propertylist,ihave,propertytype,available,googleurl,propshort,proplong,nearby,land_mark,city,pincode,fulladdress,slugname from realstate where active ='Y' ";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        RepeatInformation.DataSource = dt;
        RepeatInformation.DataBind();


    }
}