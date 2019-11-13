using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Assignment
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DataUsersConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from DatabaseUsers_Table where Username='" + txtUname.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPwordQuery = "select Password from DatabaseUsers_Table where Username='" + txtUname.Text + "'";
                SqlCommand pwordcom = new SqlCommand(checkPwordQuery, conn);
                string password = pwordcom.ExecuteScalar().ToString().Replace(" ", "");
                if (password == txtPword.Text)
                {
                    Session["New"] = txtUname.Text;
                    Response.Write("Password is Correct!");
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Response.Write("Password is NOT Correct!");
                }
            }
            else
            {
                Response.Write("Username is Not Correct!");
            }

        }
    }
}