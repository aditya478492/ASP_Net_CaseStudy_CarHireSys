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
    public partial class RegistrationPage : System.Web.UI.Page
    {
        public string id3;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["login"]==null)
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            btncardetails.Visible = true;
            Random ran1 = new Random();
            int cot = ran1.Next(5)+1+ran1.Next(6);
            string id3 = "BCD2016" + cot;
            lblid.Text = id3;
            Session["RegistrationId"] = lblid.Text;
            string conn3 = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            SqlConnection con3 = new SqlConnection(conn3);
            con3.Open();
            SqlCommand cmd3 = new SqlCommand("insert into registration4(username,address,contactnumber,emailid,car,place,dateofhire,custid) values('"+txtbxusername.Text+"','"+txtbxaddress.Text+"','"+txtbxcontactnumber.Text+"','"+txtbxemailid.Text+"','"+ddlcar.Text+"','"+txtbxplace.Text+"','"+txtbxdateofhire.Text+"','"+id3+"')",con3);
            int rows3=cmd3.ExecuteNonQuery();
            if(rows3>0)
            {
                lblid.Text = id3;
            }
            else
            {
                lblstatus.Text="Not Successfull!!";
                con3.Close();
            }
            if (!IsPostBack)
            {
                btncardetails.Visible = false;
            }
        }

        protected void btncardetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("CarDetails.aspx");
        }
    }
}