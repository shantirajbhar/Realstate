using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void registerlogin(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
        SqlConnection conn = null;
        try
        {
            string username = userName.Text;
            string pass_word = password.Text;
            string fname = f_name.Text;
            string lname = l_name.Text;
            

            const int salt = 13;
            string hased = BCrypt.Net.BCrypt.HashPassword(pass_word, salt);

            conn = new SqlConnection(strcon);
            string sql = "insert into users(username,pass_user,fname_user,lname_user) values ('"+username+"','"+ hased + "','"+fname+"','"+lname+"')";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            int status = cmd.ExecuteNonQuery();
            
            if (status>0)
            {
                Response.Redirect("login.aspx");

            }
            else
            {

                //Console.WriteLine("Something Went Wrong");
                //errormessage.Text = "Invalid Password";
                //Response.Redirect("Default.aspx");
                Response.Write("<script>alert('User name alrady taken')</script>");
            }

        }
        catch (Exception ex)
        {
            Console.WriteLine(ex);
           // Console.WriteLine("Something Went Wrong");
            Response.Write("<script>alert('User name alrady taken')</script>");
        }
        finally
        {
            conn.Close();
        }

    }
}