using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CaseStudy2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
        protected void btnSignin_Click(object sender, EventArgs e)
        {
            Response.Redirect("SigninPage.aspx");
        }

        protected void btnoperator_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }
            

        protected void btnoperatorlogin_Click(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from operatorlogin where username='"+txtbxopusername.Text+"' and password='"+txtbxoppassword.Text+"'",con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            Session["operator"] = txtbxopusername.Text;
            sda.Fill(dt);
            if(dt.Rows[0][0].ToString()=="1")
            {
                Response.Redirect("operator.aspx");
            }
            else
            {
                lblwrng.Text = "Invalid Credentials!!";
            }
            }
        }
        }
    
