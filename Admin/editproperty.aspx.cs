using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_editproperty : System.Web.UI.Page
{
    private string editid;
    private object propertyName;

    public object MinPrice { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        int editid = Convert.ToInt32(Request.QueryString["id"]);

        if(editid != null)
        {
            SqlConnection conn = null;
            string strcon = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
            conn = new SqlConnection(strcon);

            string sql = "select id,propertyname,minimumprice,maximumprice,uploadphoto,facebookurl,instagram,whatsapp,youtube,areasqft,bedrooms,bathrooms,garage,propertylist,ihave,propertytype,available,googleurl,propshort,proplong,nearby,land_mark,city,pincode,fulladdress  from realstate where id='" + editid + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            editprop.DataSource = dt;
            editprop.DataBind();
        }else
        {
            Response.Redirect("editproperty");
        }
        

    }
    
    protected void UpdateProp(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
        SqlConnection conn = null;
        try
        {


            int editid = Convert.ToInt32(Request.QueryString["id"]);
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            string prName = (item.FindControl("propertyName")as TextBox).Text;
            string minimum = (item.FindControl("MinPrice")as TextBox).Text;
            string maximum = (item.FindControl("maxPrice") as TextBox).Text;
            string facebook = (item.FindControl("facebookUrl") as TextBox).Text;
            string instagram = (item.FindControl("InstaGram") as TextBox).Text;
            string whatsapp = (item.FindControl("whatSapp") as TextBox).Text;
            string youtube = (item.FindControl("youTube") as TextBox).Text;
            string areasqft = (item.FindControl("area") as TextBox).Text;
            string bedroom = (item.FindControl("bedRoom") as TextBox).Text;
            string bathroom = (item.FindControl("bathRoom") as TextBox).Text;
            string garagenew = (item.FindControl("garage") as TextBox).Text;

            string list = Request.Form["listProperty"];
            string ihave = Request.Form["iHave"];
           string property = Request.Form["propertyType"];
            string available = Request.Form["availableFor"];

            string google_map = Request.Form["googlemap"];

            string long_dis = Request.Form["longdis"];
            string near_by = Request.Form["nearby"];
            string short_dis = Request.Form["shortdis"];

            string land_mark = (item.FindControl("landmark") as TextBox).Text;
            string citynew = (item.FindControl("city") as TextBox).Text;
            string pin_code = (item.FindControl("pincode") as TextBox).Text;
            string full_add = (item.FindControl("fulladd") as TextBox).Text;
            //string slugname = Regex.Replace(prName.Replace(",", "_"), @"[^0-9a-zA-Z:,]+", "_").ToLower();


            string SaveLocation = "";
            string actualPath = "";
            string folderName = "Upload";

            foreach(RepeaterItem itm in editprop.Items)
            {
                FileUpload fileupload = itm.FindControl("photos") as FileUpload;
                if (fileupload.HasFile)
                {
                    if ((fileupload.PostedFile != null) && (fileupload.PostedFile.ContentLength > 0))
                    {
                        Guid myuuid = Guid.NewGuid();
                        string myuuidAsString = myuuid.ToString();
                        string fn = System.IO.Path.GetFileName(fileupload.PostedFile.FileName);
                        SaveLocation = Server.MapPath("\\" + folderName) + "\\" + myuuidAsString + fn;
                        actualPath = folderName + "\\" + myuuidAsString + fn;
                        fileupload.PostedFile.SaveAs(SaveLocation);
                    }
                }
            }

            


            conn = new SqlConnection(strcon);
            string sql = "update  realstate set propertyname = '"+ prName + "',minimumprice = '"+ minimum + "',maximumprice='"+ maximum + "',facebookurl='"+ facebook + "',instagram='"+ instagram + "',whatsapp='"+ whatsapp + "',youtube='"+ youtube + "',areasqft='"+ areasqft + "',bedrooms='"+ bedroom + "',bathrooms='"+ bathroom + "',garage='"+ garagenew + "',propertylist='"+ list + "',ihave='"+ ihave + "',propertytype='"+ property + "',available='"+ available + "',googleurl='"+ google_map + "',propshort='"+ short_dis + "',proplong='"+ long_dis + "',nearby='"+ near_by + "',land_mark='"+ land_mark + "',city='"+ citynew + "',pincode='"+pin_code+ "',fulladdress='" + full_add + "', uploadphoto = '" + actualPath + "' where id ='" + editid + "'";
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



}