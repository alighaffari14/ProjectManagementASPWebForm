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
    public partial class AssignTaskTeam : System.Web.UI.Page
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
                    LoadTeamDDL();
                    LoadTaskDDL();
                }
            }
        }


        //Loading dropdownlist for showing the Team's Name
        public void LoadTeamDDL()
        {
            Con = Connection.Authorize();
            string query = "select * from Team";
            SqlCommand cmd = new SqlCommand(query, Con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            teamddl.DataSource = ds;
            teamddl.DataBind();
            teamddl.DataTextField = "Team_Name";
            teamddl.DataValueField = "Team_Id";
            teamddl.DataBind();

        }

        public void LoadTaskDDL()
        {
            Con = Connection.Authorize();
            string query = "select* from tasks";
            SqlDataAdapter cmd = new SqlDataAdapter(query, Con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            taskddl.DataSource = dt;
            taskddl.DataTextField = "TaskName";
            taskddl.DataValueField = "id";
            taskddl.DataBind();

        }

        public void btnAssignTaskTeam_Click(object sender, EventArgs e)
        {
            Con = Connection.Authorize();
            string query = "insert into Task_Assign_Team(Task_Id,Team_Id)values('"+ taskddl.SelectedItem.Value +"','"+ teamddl.SelectedItem.Value +"')";
            SqlCommand cmd = new SqlCommand(query,Con);
            int a = cmd.ExecuteNonQuery();
            if (a != null)
            {
                Response.Write("<script>alert('Task has been assigned to Team's Member Sucessfully!')</script>");
                Response.Redirect(RedirectionUrl.TaskAssignMember);
            }
            else
            {
                Response.Write("<script>alert('Something Went Wrong!')</script>");
            }
        }
    }
}