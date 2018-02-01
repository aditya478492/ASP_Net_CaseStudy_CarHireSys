using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using BusinessLayer;

namespace DatabaseLayer
{
    public class DataAccessLogic
    {
        string conn = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
       
        public int LoginUser(UserDetails user)
        {
            SqlConnection con = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand("uspChkLogin", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", user.username);
            cmd.Parameters.AddWithValue("@passowrd", user.password);
            int res = cmd.ExecuteNonQuery();
            return res;
        }
    }

    public class UserDetails:DataAccessLogic
    {
        public string username { get; set; }
        public int password { get; set; }
    }
}
