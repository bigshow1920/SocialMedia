using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace Socialmedia
{
    internal class Connectsql
    {
        public SqlConnection setdata()
        {
            string connetionString = null;
            SqlConnection cnn;
            connetionString = "Data Source=2ZNC2CQF7K03RZR\\SQLEXPRESS;Initial Catalog=sm;User ID=sa;Password=123456";
            cnn = new SqlConnection(connetionString);
            return cnn;
        }
    }
}
