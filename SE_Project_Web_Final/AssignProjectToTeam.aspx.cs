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
    public partial class AssignProjectToTeam : System.Web.UI.Page
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
                    Loadteamddropdown();
                    Loadprojectddl();
                }
            }
        }


        //Loading dropdownlist for showing the Team's Name
        public void Loadteamddropdown()
        {
            Con = Connection.Authorize();
            string query = "select * from Team";
            SqlCommand cmd = new SqlCommand(query, Con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            teamddropdown.DataSource = ds;
            teamddropdown.DataBind();
            teamddropdown.DataTextField = "Team_Name";
            teamddropdown.DataValueField = "Team_Id";
            teamddropdown.DataBind();

        }

        public void Loadprojectddl()
        {
            Con = Connection.Authorize();
            string query = "select* from Projects";
            SqlDataAdapter cmd = new SqlDataAdapter(query, Con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            projectddl.DataSource = dt;
            projectddl.DataTextField = "project_name";
            projectddl.DataValueField = "Project_Id";
            projectddl.DataBind();

        }

        public void btnAssignProjectTeam_Click(object sender, EventArgs e)
        {
            Con = Connection.Authorize();
            string query = "insert into Assign_Project_Team(Team_Id,Project_Id)values('" + teamddropdown.SelectedItem.Value + "','" + projectddl.SelectedItem.Value + "')";
            SqlCommand cmd = new SqlCommand(query, Con);
            int a = cmd.ExecuteNonQuery();
            if (a != null)
            {
                Response.Write("<script>alert('Project has been assigned to Team's Member Sucessfully!')</script>");
                Response.Redirect(RedirectionUrl.AddTask);
            }
            else
            {
                Response.Write("<script>alert('Something Went Wrong!')</script>");
            }
        }
    }
}