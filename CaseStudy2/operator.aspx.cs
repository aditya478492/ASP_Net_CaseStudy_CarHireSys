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
    public partial class _operator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //    string conn6 = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            //    SqlConnection con6 = new SqlConnection(conn6);
            //    con6.Open();
            //    SqlCommand cmd6 = new SqlCommand("select sm from vehicles2", con6);
            //    SqlDataReader dr;
            //    dr = cmd6.ExecuteReader();
            //    if (dr.HasRows)
            //    {
            //        if (IsPostBack == true)
            //        {
            //            while (dr.Read())
            //            {
                           
            //                    ddldelcar.Items.Add(dr[0].ToString());
            //            }
            //        }
            //}
                
        }

        protected void btndisplay_Click(object sender, EventArgs e)
        {
           
            localhost.WebService1 service = new localhost.WebService1();
            DataTable d = service.display();
            GridView1.DataSource = d;
            GridView1.DataBind();
        
        }

        protected void btnaddcar_Click(object sender, EventArgs e)
        {
            
            localhost.WebService1 service1 = new localhost.WebService1();
           int r= service1.opinsert(ddlvt.SelectedValue, ddlvn.SelectedValue, ddlfr.SelectedValue, ddld.SelectedValue,ddlrm.SelectedValue,ddlsc.SelectedValue);
            if(r>0)
            {
                lblmsg.Text = "New Vehicle Added Successfully!!";
            }
                 
        }

        protected void btndeletecar_Click(object sender, EventArgs e)
        {
            
            localhost.WebService1 service3 = new localhost.WebService1();
            int b = int.Parse(txtbxdel.Text);
           int a= service3.Delete(b);
            if (a > 0)
            {
                lbldelmsg.Text = " Successfully Deleted  "+txtbxdel.Text+"  !!" ;
            }
            DataTable d = service3.display();
            GridView1.DataSource = d;
            GridView1.DataBind();
        }

        protected void ddlrm_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlfr_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlrm_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void ddlvt_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlvn_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlsc_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddld_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlvn_SelectedIndexChanged1(object sender, EventArgs e)
        {
          if(ddlvn.SelectedValue=="Scorpio")
          {
              ddlsc.SelectedValue = "7";
              ddlvt.SelectedValue = "Van";
          }
           else if(ddlvn.SelectedValue=="Toyota Qualis")
            {
                ddlsc.SelectedValue = "7";
                ddlvt.SelectedValue = "Van";
            }
          else if(ddlvn.SelectedValue=="Tata Sumo")
            {
                ddlsc.SelectedValue = "7";
                ddlvt.SelectedValue = "Van";
            }
            else
          {
              ddlsc.SelectedValue = "4";
              ddlvt.SelectedValue = "Car";
          }
        }

        protected void ddlsc_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if(ddlsc.SelectedValue=="7")
            {

            }
        }

        protected void ddlvt_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if(ddlvt.SelectedValue=="Van")
            {
                if (IsPostBack)
                {
                    ddlvn.Items.Clear();
                    ddlvn.Items.Add(new ListItem("Scorpio", "Scorpio"));
                    ddlvn.Items.Add(new ListItem("Tata Sumo", "Tata Sumo"));
                    ddlvn.Items.Add(new ListItem("Toyota Qualis", "Toyota Qualis"));
                    ddlsc.Items.Clear();
                    ddlsc.Items.Add(new ListItem("7","7"));
                }
            }
            else if (ddlvt.SelectedValue == "Car")
            {
                if (IsPostBack)
                {
                    ddlvn.Items.Clear();
                    ddlvn.Items.Add(new ListItem("Esteem", "Esteem"));
                    ddlvn.Items.Add(new ListItem("Honda City", "Honda City"));
                    ddlvn.Items.Add(new ListItem("Hyundai Accent", "Hyundai Accent"));
                    ddlsc.Items.Clear();
                    ddlsc.Items.Add(new ListItem("4", "4"));
                }
            }
        }

        protected void txtbxdel_TextChanged(object sender, EventArgs e)
        {

        }

        

       

       
    }
}