using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
//using BusinessLayer;

namespace CaseStudy2
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("WelcomePage.aspx");
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Session["login"] = txtbxusername.Text;
            string conn = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from signin4 where username='" + txtbxusername.Text + "' and password='" + txtbxpassword.Text + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                Response.Redirect("RegistrationPage.aspx");
            }
            else
            {
                lblwarning.Text = "Invalid Credentials!!";
            }
        }
        //BusinessLogics bs = new BusinessLogics();
        //bs.LoginUser(UserDetails user);
        //}

    }
}