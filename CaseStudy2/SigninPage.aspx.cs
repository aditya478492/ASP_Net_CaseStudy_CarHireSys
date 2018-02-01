using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace CaseStudy2
{
    public partial class SigninPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            Session["signin"] = txtbxusername2.Text;
            Random ran = new Random();
            string id = "CR00" + ran.Next(6);
            string conn=ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd1 =new SqlCommand("select count(*) from signin4 where username='"+txtbxusername2.Text+"'",con);
            SqlCommand cmd = new SqlCommand("insert into signin4(username,password,emailid,location,mobilenumber,id) values('"+txtbxusername2.Text+"','"+txtbxpassword2.Text+"','"+txtbxemailid.Text+"','"+txtbxlocation.Text+"','"+txtbxmobilenumber.Text+"','"+id+"')", con);
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            if(dt1.Rows[0][0].ToString()=="1")
            {
                lblwarning2.Text="User name already exists!! Enter new user Name!!";
                txtbxusername2.Text = string.Empty;
            }
            else
            {
            int rows=0;
            rows=cmd.ExecuteNonQuery();
            if(rows>0)
            {
                lblwarning2.Text = "Your Login Id for future Reference is " + id;
                btnsgnlgn.Visible = true;
            }
            else
            {
                lblwarning2.Text = "ERROR";
            }
            con.Close();
            }
        }

        protected void btnsgnlgn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        
        }
    }
