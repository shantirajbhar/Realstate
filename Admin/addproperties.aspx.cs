using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_addproperties : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void addproperties(object sender, EventArgs e)

    {
        string strcon = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
        SqlConnection conn = null;
        try
        {
            string prName = propertyName.Text;
            string minimum = MinPrice.Text;
            string maximum = maxPrice.Text;
            string facebook = facebookUrl.Text;
            string instagram = InstaGram.Text;
            string whatsapp = whatSapp.Text;
            string youtube = youTube.Text;
            string areasqft = area.Text;
            string bedroom = bedRoom.Text;
            string bathroom = bathRoom.Text;
            string garagenew = garage.Text;

            string list = Request.Form["listProperty"];
            string ihave = Request.Form["iHave"];// for name attribute
            string property = Request.Form["propertyType"];
            string available = Request.Form["availableFor"];

            string google_map = Request.Form["googlemap"];

            string long_dis = Request.Form["longdis"];
            string near_by = Request.Form["nearby"];
            string short_dis = Request.Form["shortdis"];

            string land_mark = landmark.Text;
            string citynew = city.Text;
            string pin_code = pincode.Text;
            string full_add = fulladd.Text;
            string slugname =Regex.Replace(prName.Replace(",","_"), @"[^0-9a-zA-Z:,]+", "_").ToLower();
            

            string SaveLocation = "";
            string actualPath = "";
            string folderName = "Upload";
            if ((photos.PostedFile != null) && (photos.PostedFile.ContentLength > 0))
            {
                Guid myuuid = Guid.NewGuid();
                string myuuidAsString = myuuid.ToString();
                string fn = System.IO.Path.GetFileName(photos.PostedFile.FileName);
                SaveLocation = Server.MapPath("\\" + folderName) + "\\" + myuuidAsString + fn;
                actualPath = folderName + "\\" + myuuidAsString + fn;
                photos.PostedFile.SaveAs(SaveLocation);
            }

            
            conn = new SqlConnection(strcon);
            string sql = "insert into realstate(propertyname,minimumprice,maximumprice,uploadphoto,facebookurl,instagram,whatsapp,youtube,areasqft,bedrooms,bathrooms,garage,propertylist,ihave,propertytype,available,googleurl,propshort,proplong,nearby,land_mark,city,pincode,fulladdress,slugname) values ('" + prName + "','" + minimum + "','" + maximum + "','" + actualPath + "','" + facebook + "','" + instagram + "','" + whatsapp + "','" + youtube + "','" + areasqft + "','" + bedroom + "','" + bathroom + "','" + garagenew + "','" + list + "','" + ihave + "','" + property + "','" + available + "','" + google_map + "','" + short_dis + "','" + long_dis + "','" + near_by + "','" + land_mark + "','" + citynew + "','" + pin_code + "','" + full_add + "','" + slugname + "')";
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
        catch (Exception ex)
        {
            Console.WriteLine(ex);
        }
        finally
        {
            conn.Close();
        }
       

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}