using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SE_Project_Web_Final.WebCommon
{

    public class Connection
    {
        public static string Path = @"Data Source=GHAFFARI\TECH4MINDS;Initial Catalog=SEProject;Integrated Security=True";
        public static SqlConnection Authorize()
        {
            SqlConnection con = new SqlConnection(Path);
            con.Open();
            return con;
        }
    }
}