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
    public partial class CarDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["RegistrationId"] != null)
            {
                lblid.Text = Session["RegistrationId"].ToString();
                string conn4 = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
                SqlConnection con4 = new SqlConnection(conn4);
                con4.Open();
                SqlCommand cmd4 = new SqlCommand("select car from registration4 where noid=(select MAX(noid) from registration4)", con4);
                SqlCommand cmd5 = new SqlCommand("select custid from registration4 where noid=(select MAX(noid) from registration4)", con4);
                SqlDataReader reader = cmd4.ExecuteReader();
                while (reader.Read())
                {
                    lblcar.Text = reader["car"].ToString();
                    if(lblcar.Text=="Scorpio")
                    {
                        lblvehicletype.Text="Van";
                        lblseatingcapacity.Text = "7";
                    }
                   else if (lblcar.Text == "Tata Sumo")
                    {
                        lblvehicletype.Text = "Van";
                        lblseatingcapacity.Text = "7";
                    }
                   else if (lblcar.Text == "Toyota Qualis")
                    {
                        lblvehicletype.Text = "Van";
                        lblseatingcapacity.Text = "7";
                    }
                   else if (lblcar.Text == "Esteem")
                    {
                        lblvehicletype.Text = "Car";
                        lblseatingcapacity.Text = "4";
                    }
                   else if (lblcar.Text == "Honda City")
                    {
                        lblvehicletype.Text = "Car";
                        lblseatingcapacity.Text = "4";
                    }
                  else if (lblcar.Text == "Hyundai Vity")
                    {
                        lblvehicletype.Text = "Car";
                        lblseatingcapacity.Text = "4";
                    }
                }
                
                con4.Close();
           
           }
        }

        protected void btncalculate_Click(object sender, EventArgs e)
        {
            if(ddlrentmode.SelectedValue=="Per Day")
            {
                if(lblcar.Text=="Scorpio")
                {
                    lblsm.Text = "Total Cost:1800";
                }
                else if(lblcar.Text=="Tata Sumo")
                {
                    lblsm.Text = "Total Cost:1700";
                }
                else if (lblcar.Text == "Toyota Qualis")
                {
                    lblsm.Text = "Total Cost:2000";
                }
                else if (lblcar.Text == "Esteem")
                {
                    lblsm.Text = "Total Cost:1750";
                }
                else if (lblcar.Text == "Honda City")
                {
                    lblsm.Text = "Total Cost:2500";
                }
                else if (lblcar.Text == "Hyundai Accent")
                {
                    lblsm.Text = "Total Cost:2100";
                }
            }
            else
            {
                if(ddldestination.SelectedValue=="Srisailam")
                {
                    int a = 240 * 7;
                    lblsm.Text = "Total Cost:"+a;
                }
               else if (ddldestination.SelectedValue == "Nagarjunasagar")
                {
                    int b = 180 * 7;
                    lblsm.Text = "Total Cost:" + b;
                }
               else if (ddldestination.SelectedValue == "Tirupathi")
                {
                    int c = 720 * 7;
                    lblsm.Text = "Total Cost:" + c;
                }
            }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btncheck_Click(object sender, EventArgs e)
        {
            localhost.WebService1 service = new localhost.WebService1();
            DataTable d = service.display();
            GridView1.DataSource = d;
            GridView1.DataBind();
        }

        protected void btnbook_Click(object sender, EventArgs e)
        {
            localhost.WebService1 serv = new localhost.WebService1();
            int p=serv.condition(lblvehicletype.Text,lblcar.Text,ddldestination.SelectedValue);
            if(p>0)
            {
                localhost.WebService1 serv1 = new localhost.WebService1();
               int l= serv1.bookedinsert(lblvehicletype.Text,lblcar.Text,ddlfuel.SelectedValue,lblseatingcapacity.Text,ddlrentmode.SelectedValue);
               lblsm.Text = "Booked Successfully!!";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlvehicletype_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}