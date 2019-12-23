using SE_Project_Web_Final.WebCommon;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project_Web_Final
{
    public partial class AddTeam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User_Account_Id"] == null)
            {


                Response.Redirect(RedirectionUrl.Login);
            }
            
        }

        public void btnAddTeam_Click(object sender, EventArgs e)
        {
            int ab = 0;
            SqlConnection con;
            con = Connection.Authorize();
            string query = "insert into Team(Team_Name)values('" + TeamNameTxt.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            int a = cmd.ExecuteNonQuery();
            if (a != 0)
            {
                Response.Write("<Script>alert('Your Team has been created Successfully!')</script>");
                Response.Redirect(RedirectionUrl.AddTeamMembers);
            }
            else
            {
                Response.Write("<Script>alert(ab)</script>");
            }
        }
    }
}