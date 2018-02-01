using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DatabaseLayer;
using BusinessLayer;

namespace BusinessLayer
{
    public class BusinessLogics
    {
        DataAccessLogic obj;
        public int LoginUser(Login user)
        {
            obj = new DataAccessLogic();
            return obj.LoginUser(user);
        }

        public class Login
        {
            
        }
    }
}
