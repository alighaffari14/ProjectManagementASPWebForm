using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SE_Project_Web_Final.WebCommon;

namespace SE_Project_Web_Final
{
    public partial class TaskAssignMember : System.Web.UI.Page
    {
        public SqlConnection Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User_Account_Id"] == null)
            {


                Response.Redirect(RedirectionUrl.Login);
            }
            else
            {
                if (!IsPostBack)
                {
                    LoaduserDDL();
                    Taskassignteamddl();

                }
            }

        }

        

        public void Taskassignteamddl()
        {
            Con = Connection.Authorize();
            string query = "select tat.* , t.TaskName, te.Team_Name from Task_Assign_Team tat inner join tasks t on t.id= tat.Task_Id inner join Team te on te.Team_Id=tat.Team_id";
            SqlDataAdapter sda = new SqlDataAdapter(query,Con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            taskassignmemberddl.DataSource = dt;
            taskassignmemberddl.DataTextField = "Task_Assign_Team_Id";
            taskassignmemberddl.DataValueField = "Task_Assign_Team_Id";
            taskassignmemberddl.DataBind();
            //taskassignmemberddl.Items.Insert(0, new ListItem("--Select--", "0"));
            //taskassignmemberddl.SelectedIndex = taskassignmemberddl.Items.IndexOf(taskassignmemberddl.Items.FindByText("--Select--"));
        }

        public void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
                Con = Connection.Authorize();
                string query = "select tat.* , t.TaskName as task, te.Team_Name as Team from Task_Assign_Team tat inner join tasks t on t.id= tat.Task_Id inner join Team te on te.Team_Id=tat.Team_id where tat.Task_assign_team_Id='" + taskassignmemberddl.SelectedItem.Value + "'";
                SqlCommand cmd = new SqlCommand(query, Con);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    teamnametxt.Text = reader[3].ToString();
                    tasknametxt.Text = reader[4].ToString();
                }
                   
               
            
        }

        public void LoaduserDDL()
        {
            Con = Connection.Authorize();
            string query = "select * from user_account";
            SqlDataAdapter cmd = new SqlDataAdapter(query, Con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            userddl.DataSource = dt;
            userddl.DataTextField = "username";
            userddl.DataValueField = "User_Account_Id";
            userddl.DataBind();
         
        }


        public void btnAssignTaskMember_Click(object sender, EventArgs e)
        {
            Con = Connection.Authorize();
            string query = "insert into Task_Assign_Member(Task_Assign_Team_Id,User_Account_Id)values('" + taskassignmemberddl.SelectedItem.Value + "','" + userddl.SelectedItem.Value + "')";
            SqlCommand cmd = new SqlCommand(query,Con);
            int a = cmd.ExecuteNonQuery();
            if (a != null)
            {
                Response.Write("<script>alert('task assign to member')</script>");
                Response.Redirect(RedirectionUrl.Dashboard);
            }
            else
            {
                Response.Write("<script>alert('Data not inserted')</script>");
            }
        }
    }
}