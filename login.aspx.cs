using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void userlogin(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
        SqlConnection conn = null;
        try
        {
            string name = user_name.Text;
            string pass = password.Text;
            const int salt = 13;
            string hased = BCrypt.Net.BCrypt.HashPassword(pass, salt);

         conn = new SqlConnection(strcon);
       string sql = "select us.id , r.name as role, us.username, us.Pass_user, us.fname_user, us.lname_user, us.role_id from users us JOIN role r ON us.role_id = r.id where us.username='" + name+"'";
            conn.Open();
        SqlCommand cmd = new SqlCommand(sql, conn);
           SqlDataReader sda = cmd.ExecuteReader();
            Users user = new Users();
            while (sda.Read())
            {
                user.id = Convert.ToInt32(sda["id"]);
                user.username = sda["username"].ToString();
                user.Password = sda["Pass_user"].ToString();
                user.fname = sda["fname_user"].ToString();
                user.lname = sda["lname_user"].ToString();
                user.roleuser = sda["role"].ToString();

                Console.WriteLine(sda["username"]);
                
            }
            Console.WriteLine(user.username,user.Password,user.fname,user.lname,user.roleuser);
         
            if (BCrypt.Net.BCrypt.Verify(pass, user.Password))
            {
                Session["username"] = user.username;
                if (user.roleuser.Equals("ADMIN"))
                {
                   Response.Redirect("Admin/dashboard.aspx");
                }

            }
            else
            {
               
                Console.WriteLine("Invalid password");
                //errormessage.Text = "Invalid Password";
                //Response.Redirect("Default.aspx");
                Response.Write("<script>alert");
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