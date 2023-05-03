using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Socialmedia
{
    internal class account
    {
        public account(String username,String name, String password,String avartar)
        {
            this.username = username;
            this.name = name;
            this.password = password;
            this.avartar = avartar;
        }
        public String username, name, password, avartar;
    }
}
