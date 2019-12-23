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
    public partial class projectdetail : System.Web.UI.Page
    {
        public string a = "";
        public string currentuserID = "";

       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User_Account_Id"] == null)
            {


                Response.Redirect(RedirectionUrl.Login);
            }
            else
            {
               

                string projectidvalue = Request.QueryString["Project_Id"];
                SqlConnection con;
                con = Connection.Authorize();
                string query = "select * from Projects where Project_Id='" + projectidvalue + "' ";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                gvprojectdetail.DataSource = ds;
                gvprojectdetail.DataBind();

                //calling method for ProjectReport
                ProjectReport(projectidvalue);

               


               
            }
        }

       
       

        public void ProjectReport(string projectidval)
        {

            SqlConnection Con;
            Con = Connection.Authorize();
            string query = "  ";
            SqlCommand cmd = new SqlCommand("projectreport",Con);
            cmd.Parameters.Add(new SqlParameter("@Project_Id", System.Data.SqlDbType.NChar, 15)).Value = projectidval;
            //cmd.Parameters.Add(new SqlParameter("@User_Account_Id", System.Data.SqlDbType.NChar, 30)).Value = a;
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            gvreport.DataSource = ds;
            gvreport.DataBind();
        
            Con.Close();
        }
    }
}