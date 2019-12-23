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
    public partial class AddProject : System.Web.UI.Page
    {

        public SqlConnection Con;
        public string a = "";
        public string currentuserID = "";

        //method for getting currentsessionID

        public void GetCurrentSessionId()
        {
            Con = Connection.Authorize();
            string query = @"
            select p.CreatedBy as UserID from projects p
            inner join user_account u on u.User_Account_Id=p.CreatedBy
            where u.username='" + a + "' ";

            SqlCommand cmd = new SqlCommand(query, Con);
            SqlDataReader userReader = null;
            userReader = cmd.ExecuteReader();
            while (userReader.Read())
            {
                currentuserID = userReader["UserID"].ToString();
            }

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User_Account_Id"] == null)
            {


                Response.Redirect(RedirectionUrl.Login);
            }
            else
            {
                foreach (string s in Session)
                {
                    a = Session[s].ToString();

                }

               
              
                GetCurrentSessionId();
               
             
              
            }
        }


        public void btnAddProject_Click(object sender, EventArgs e)
        {
            Con = Connection.Authorize();
            string query = "insert into Projects(project_name,planned_start_date,planned_end_date,actual_start_date,actual_end_date,project_description,hourly_rate,budget,Active,Total_Hours,Labour_Cost,Material_Cost,Total_Cost,CreatedBy)values('" + project_name.Text + "','" + planned_start_date.Text + "', '" + planned_end_date.Text + "', '" + actual_start_date.Text + "', '" + actual_end_date.Text + "','" + project_description.Text + "','" + hourly_rate.Text + "', '" + budget.Text + "','" + Active.Checked + "','" + Total_Hours.Text + "','" + Labour_Cost.Text + "','" + Material_Cost.Text + "', '" + Total_Cost.Text + "','" + currentuserID + "') ";
            SqlCommand cmd = new SqlCommand(query, Con);
            int i = cmd.ExecuteNonQuery();
            Con.Close();
            if (i != 0)
            {
               Response.Write("<script>alert('Your Project has been added successfully!')</script>");
                Response.Redirect(RedirectionUrl.AddTeam);
            }
            else
            {
                Response.Write("<script>alert('Something went wrong to insert Project!')</script>");
            }

        }
    }
}