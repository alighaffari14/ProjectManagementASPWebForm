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
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void btnRegisterUser_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            con = Connection.Authorize();
            string query = "insert into user_account(username,password,email,first_name,last_name,Gender,Contact,DOB,CreatedOn)values('" + username.Text + "','" + password.Text + "', '" + email.Text + "', '" + first_name.Text + "','" + last_name.Text + "','" + GenderDDL.SelectedItem.Text + "','" + Contact + "','" + DOB.Text + "','" + CreatedOn.Text + "')";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.ExecuteNonQuery();
        }
    }
}