using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using SE_Project_Web_Final.WebCommon;

namespace SE_Project_Web_Final
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        

        public void BtnSignIn_Click(object sender, EventArgs e)
        {
            SqlConnection Con;
            Con = Connection.Authorize();
            SqlCommand cmd = new SqlCommand("select * from user_account where username='" + TxtUserName.Text + "' and password='" + TxtPassword.Text + "'", Con);
            DataTable dt = new DataTable(); 
            SqlDataAdapter sda = new SqlDataAdapter(cmd);  
             
            sda.Fill(dt);

            int i = cmd.ExecuteNonQuery();
            Con.Close();
            if (dt.Rows.Count > 0)
            {
                Session["User_Account_Id"] = TxtUserName.Text;
                Response.Redirect(RedirectionUrl.Dashboard);
                Session.RemoveAll();
            }
            else
            {
                Response.Write("<script>alert('wrong username or password')</script>");

            }  
        }
    }
}