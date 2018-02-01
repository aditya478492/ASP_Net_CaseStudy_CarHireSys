using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CaseStudy2
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        public int insertdetails(string vehicleType,string vehicleName,string FuelRequired,int SeatingCapacity,int RentPerDay,int RatePerKm,string Id,string destination)
        {
            string conn4 = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            SqlConnection con4 = new SqlConnection(conn4);
            con4.Open();
            SqlCommand cmd4 = new SqlCommand("insert into vehicles2(vehicleType,vehicleName,FuelRequired,seatingCapacity,rentPerDay,rentPerKm,Id,destination) values(@vehicleType,@vehicleName,@FuelRequired,@SeatingCapacity,@RentPerDay,@RatePerKm,@Id,@destination)",con4);
            cmd4.Parameters.AddWithValue("@vehicleType",vehicleType);
            cmd4.Parameters.AddWithValue("@vehicleName", vehicleName);
            cmd4.Parameters.AddWithValue("@FuelRequired",FuelRequired);
            cmd4.Parameters.AddWithValue("@Seatingcapacity",SeatingCapacity);
            cmd4.Parameters.AddWithValue("@RentPerDay",RentPerDay);
            cmd4.Parameters.AddWithValue("@RatePerKm",RatePerKm);
            cmd4.Parameters.AddWithValue("@Id",Id);
            cmd4.Parameters.AddWithValue("@destination",destination);
           int rows4= cmd4.ExecuteNonQuery();
            if(rows4>0)
            {
                return rows4;
            }
            return 0;
            con4.Close();
        }

        [WebMethod]
        public int opinsert(string vehicleType, string vehicleName, string FuelRequired, string destination, string RentMode, string SeatingCapacity)
        {
            string conn4 = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            SqlConnection con4 = new SqlConnection(conn4);
            con4.Open();
            SqlCommand cmd4 = new SqlCommand("insert into vehicles2(vehicleType,vehicleName,FuelRequired,rentMode,destination,seatingCapacity) values(@vehicleType,@vehicleName,@FuelRequired,@RentMode,@destination,@SeatingCapacity)", con4);
            cmd4.Parameters.AddWithValue("@vehicleType", vehicleType);
            cmd4.Parameters.AddWithValue("@vehicleName", vehicleName);
            cmd4.Parameters.AddWithValue("@FuelRequired", FuelRequired);
            cmd4.Parameters.AddWithValue("@destination", destination);
            cmd4.Parameters.AddWithValue("@RentMode", RentMode);
           
            cmd4.Parameters.AddWithValue("@Seatingcapacity", SeatingCapacity);
            int rows4 = cmd4.ExecuteNonQuery();
            if (rows4 > 0)
            {
                return rows4;
            }
            return 0;
            con4.Close();
        }

        //[WebMethod]
        //public DataTable display()
        //{
        //    string conn5 = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
        //    SqlConnection con5 = new SqlConnection(conn5);
        //    con5.Open();
        //    SqlCommand cmd5 = new SqlCommand("select * from vehicles",con5);
        //    SqlDataAdapter sda5 = new SqlDataAdapter(cmd5);
        //    DataTable dt5 = new DataTable();
        //    sda5.Fill(dt5);
        //    return dt5;
        //    con5.Close();
        //}
        [WebMethod]
        public DataTable display()
        {
            string constr = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM vehicles2"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "vehicles";
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }

        [WebMethod]
        public int Delete(string sm)
        {
            string constr = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM vehicles2 WHERE sm=@sm"))
                {
                    cmd.Parameters.AddWithValue("@sm",sm);
                    cmd.Connection = con;
                    con.Open();
                    int eff=cmd.ExecuteNonQuery();
                    if(eff>0)
                    {
                        return eff;
                    }
                    return 0;
                    con.Close();
                }
            }
        }

        [WebMethod]
        public int condition(string vehicletype,string vehiclename,string destination)
        {
            string constr = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            using(SqlConnection con=new SqlConnection(constr))
            {
                using(SqlCommand cmd=new SqlCommand("select * from vehicles2 where vehicletype=@vehicletype and vehiclename=@vehiclename and destination=@destination"))
                {
                    cmd.Parameters.AddWithValue("@vehicletype",vehicletype);
                    cmd.Parameters.AddWithValue("@vehiclename",vehiclename);
                    cmd.Parameters.AddWithValue("@destination",destination);
                    cmd.Connection = con;
                    con.Open();
                    int res = cmd.ExecuteNonQuery();
                    if(res>0)
                    {
                        return res;
                    }
                    return 0;
                }
            }

        }
        [WebMethod]
        public int bookedinsert(string vehicleType,string vehiclename,string fuelrequired,string seatingCapacity,string RentMode)
        {
            string conn4 = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            SqlConnection con4 = new SqlConnection(conn4);
            con4.Open();
            SqlCommand cmd4 = new SqlCommand("insert into vehicles2(vehicleType,vehicleName,FuelRequired,seatingCapacity,RentMode) values(@vehicleType,@vehicleName,@FuelRequired,@RentMode,@SeatingCapacity)", con4);
            cmd4.Parameters.AddWithValue("@vehicleType", vehicleType);
            cmd4.Parameters.AddWithValue("@vehicleName", vehiclename);
            cmd4.Parameters.AddWithValue("@FuelRequired", fuelrequired);
            cmd4.Parameters.AddWithValue("@Seatingcapacity", seatingCapacity);
            cmd4.Parameters.AddWithValue("@RentPerDay", RentMode);
          
            int rows4 = cmd4.ExecuteNonQuery();
            if (rows4 > 0)
            {
                return rows4;
            }
            return 0;
            con4.Close();
        }
    }
}
