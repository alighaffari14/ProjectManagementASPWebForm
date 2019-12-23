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
    public partial class AddTask : System.Web.UI.Page
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
                    LoadTaskDDL();
                }
            }
        }

        //Load Dropdownlist for the status of task
        public void LoadTaskDDL()
        {
            Con = Connection.Authorize();
            string query = "select * from task_status";
            SqlDataAdapter cmd = new SqlDataAdapter(query,Con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            StatusDDL.DataSource = dt;
            StatusDDL.DataBind();
            StatusDDL.DataTextField = "Status";
            StatusDDL.DataValueField = "id";
            StatusDDL.DataBind();  


        }

        public void btnAddTask_Click(object sender, EventArgs e)
        {
            Con = Connection.Authorize();
            string query = "insert into tasks(TaskName,Instructions,StatusID,ExpectedHours,Start_Date,Due_Date)values('" + TaskName.Text + "','" + Instructions.Text + "', '" + StatusDDL.SelectedItem.Value + "', '" + ExpectedHours.Text + "','" + TxtdateFrom.Text + "', '" + TxtpostingDateTo.Text + "') ";
            SqlCommand cmd = new SqlCommand(query, Con);
            int i = cmd.ExecuteNonQuery();
            Con.Close();
            if (i != 0)
            {
                Response.Write("<script>alert('Data Inserted Successfully!')</script>");
                Response.Redirect(RedirectionUrl.AssignTaskToTeam);
            }
            else
            {
                Response.Write("<script>alert('Something went Wrong')</script>");
            }

        }
    }
}