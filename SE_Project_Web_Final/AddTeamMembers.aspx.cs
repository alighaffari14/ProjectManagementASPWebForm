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
    public partial class AddTeamMembers : System.Web.UI.Page
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
                    LoadDDLTeamMember();
                    btnnxtstep.Visible = false;
                }
            }
        }

        public void LoaduserDDL()
        {
            Con = Connection.Authorize();
            string query = "select * from user_account";
            SqlDataAdapter cmd = new SqlDataAdapter(query,Con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "username";
            DropDownList1.DataValueField = "User_Account_Id";
            DropDownList1.DataBind();  
        }

        //Loading dropdownlist for showing the Team's Name
        public void LoadDDLTeamMember()
        {
            Con = Connection.Authorize();
            string query = "select * from Team";
            
            SqlDataAdapter da = new SqlDataAdapter(query,Con);
            DataTable ds = new DataTable();
            da.Fill(ds);
            DDLTeamMember.DataSource = ds;
            DDLTeamMember.DataTextField = "Team_Name";
            DDLTeamMember.DataValueField = "Team_Id";
            DDLTeamMember.DataBind();
            Con.Close();
 
        }

        public void btnnextstep_Click(object sender, EventArgs e)
        {
            Response.Redirect(RedirectionUrl.AddTask);
        }
    

        public void btnAddTeamMember_Click(object sender, EventArgs e)
        {
            
            Con = Connection.Authorize();
            string query = "insert into Team_Member(Team_Id,User_Account_Id)values('" + DDLTeamMember.SelectedItem.Value + "','" + DropDownList1.SelectedItem.Value + "')";
            SqlCommand cmd = new SqlCommand(query, Con);
            int a = cmd.ExecuteNonQuery();
            if (a!=null)
            {
                Response.Write("<script>alert('Member has been added to Your Team successfully!')</script>");
                btnnxtstep.Visible = true;
                Response.Redirect(RedirectionUrl.ProjectToTeam);
            }
            else
            {
                Response.Write("<script>alert('Something Went Wrong!')</script>");
            }
        }

    }
}