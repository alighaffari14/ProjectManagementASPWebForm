
using SE_Project_Web_Final.WebCommon;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SE_Project_Web_Final.General
{
    public partial class Dashboard : System.Web.UI.Page
    {
        public string a = "";
        public string currentuserID = "";
        public SqlConnection Con;
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

                lablelsessionnameshow.Text = Session["User_Account_Id"].ToString();
                workingsessionlabel.Text = Session["User_Account_Id"].ToString();

                GetProjectOwner();
                GetProjectEmployee();
              
                //LoadTaskDDL();
                //LoadTeamNameDDL();
                //LoadTaskDDLForassigntasktoproject();
                //LoadEmployeeDDL();
                
            }

           
        }

      

        //public void LoadTeamNameDDL()
        //{
        //    Con = Connection.Authorize();
        //    string query = "select * from Team";
        //    SqlCommand cmd = new SqlCommand(query,Con);
        //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    sda.Fill(ds);
        //    TeamNameDDL.DataSource = ds;
        //    TeamNameDDL.DataBind();
        //    TeamNameDDL.DataTextField = "Team_Name";
        //    TeamNameDDL.DataValueField = "Team_Id";
        //    TeamNameDDL.DataBind();
        //}

       

       


       

        ////Load Employee Dropdownlist
        //public void LoadEmployeeDDL()
        //{
        //    Con = Connection.Authorize();
        //    string query = "select * from user_account where username!='"+ a +"'";
        //    SqlDataAdapter cmd = new SqlDataAdapter(query, Con);
        //    DataTable dt = new DataTable();
        //    cmd.Fill(dt);
        //    EmployeeDDL.DataSource = dt;
        //    EmployeeDDLTeamMember.DataSource = dt;
        //    //EmployeeDDL.DataTextField = "username";
        //    //EmployeeDDL.DataValueField = "User_Account_Id";
        //    //EmployeeDDL.DataBind(); 
        //    EmployeeDDLTeamMember.DataTextField = "username";
        //    EmployeeDDLTeamMember.DataValueField = "User_Account_Id";
        //    EmployeeDDLTeamMember.DataBind();
           
           
        //}

  

       

        

        //method for owner of projects
       
        public void GetProjectOwner()
        {
            
            string query = "select * from Projects p inner join user_account u on u.User_Account_Id=p.CreatedBy where u.username='" + a + "'";
            Con = Connection.Authorize();
            SqlCommand cmd = new SqlCommand(query,Con);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            sda.Fill(ds);
            Repeater1.DataSource = ds;
            Repeater1.DataBind(); 


        }

       

        //method for employee of projects
       
        public void GetProjectEmployee()
        {

           
            string query = @"select p.* , u.username from Assigned_Projects ap
            inner join Projects p on p.Project_Id = ap.Project_Id
            inner join user_account u on u.User_Account_Id = ap.User_Account_Id
            where u.username='" + a + "' and p.CreatedBy!='" + currentuserID + "' ";
            Con = Connection.Authorize();
            SqlCommand cmd = new SqlCommand(query, Con);
        
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            sda.Fill(ds);
            Repeater2.DataSource = ds;
            Repeater2.DataBind();


        }


      

        

      


        

        ////TextBox change event
        //protected void txt1_TextChanged(object sender, EventArgs e)
        //{
        //    if ((!string.IsNullOrEmpty(Labour_Cost.Text)) && (!string.IsNullOrEmpty(Material_Cost.Text)))
        //    {
        //        Total_Cost.Text = (Convert.ToInt32(Labour_Cost.Text) + Convert.ToInt32(Material_Cost.Text)).ToString();
        //    }
        //}
        //protected void txt2_TextChanged(object sender, EventArgs e)
        //{
        //    if ((!string.IsNullOrEmpty(Labour_Cost.Text)) && (!string.IsNullOrEmpty(Material_Cost.Text)))
        //    {
        //        Total_Cost.Text = (Convert.ToInt32(Labour_Cost.Text) + Convert.ToInt32(Material_Cost.Text)).ToString();
        //    }
        //}

        
    }
}