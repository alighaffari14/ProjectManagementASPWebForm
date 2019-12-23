using SE_Project_Web_Final.WebCommon;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project_Web_Final
{
    public partial class AssignTaskToProject : System.Web.UI.Page
    {
        SqlConnection Con;
        public string a = "";
     


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
            }

        }


     


        //Load task Dropdownlist to assign the tasks to project
        public void LoadTaskDDLForassigntasktoproject()
        {
            Con = Connection.Authorize();
            string query = "select * from tasks";
            SqlDataAdapter cmd = new SqlDataAdapter(query, Con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            LoadTaskDDLforproject.DataSource = dt;
            LoadTaskDDLforproject.DataBind();
            LoadTaskDDLforproject.DataTextField = "TaskName";
            LoadTaskDDLforproject.DataValueField = "id";

            LoadTaskDDLforproject.DataBind();
            // int a = int.Parse(TextBox1.Text);
            //a= int.Parse(LoadTaskDDLforproject.DataValueField);


        }



        //Load Project DropDownlist
        public void LoadProjectDDL()
        {
            Con = Connection.Authorize();
            string query = "select * from Projects p inner join user_account u on u.User_Account_Id=p.CreatedBy where u.username='" + a + "'";
            SqlDataAdapter cmd = new SqlDataAdapter(query, Con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            ProjectDDL.DataSource = dt;
            ProjectDDL.DataBind();
            ProjectDDL.DataTextField = "Project_Name";
            ProjectDDL.DataValueField = "Project_Id";
            ProjectDDL.DataBind();
        }




        public void btnassigntasktoproject_Click(object sender, EventArgs e)
        {
            
           Con = Connection.Authorize();
            string query2 = "insert into Task_Assign_Project(Task_Id,Project_Id)values('" + LoadTaskDDLforproject.SelectedItem.Value + "','" + ProjectDDL.SelectedItem.Value + "')";
            SqlCommand cmd2 = new SqlCommand(query2, Con);
            int a = cmd2.ExecuteNonQuery();
            if (a != null)
            {
                Response.Write("<script>alert('Task has been assigned to Project')</script>");
                Response.Redirect(RedirectionUrl.AssignTaskToTeam);

            }
            else
            {
                Response.Write("<script>alert('Something Went Wrong!')</script>");
            }


        }
    }
}