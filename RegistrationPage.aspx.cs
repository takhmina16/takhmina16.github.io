using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Assignment
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DataUsersConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from DatabaseUsers_Table where Username='" + txtUname.Text+ "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User already Exists");
                }

                conn.Close();
            }
        }

        protected void buttRegister_Click1(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DataUsersConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into DatabaseUsers_Table(ID, FirstName, LastName, Username, Password,Email,Course) values (@ID, @fname,@lname,@uname,@pword,@email,@course)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@ID", newGUID.ToString());
                com.Parameters.AddWithValue("@fname", txtFname.Text);
                com.Parameters.AddWithValue("@lname", txtLname.Text);
                com.Parameters.AddWithValue("@uname", txtUname.Text);
                com.Parameters.AddWithValue("@pword", txtPword.Text);
                com.Parameters.AddWithValue("@email", txtEmail.Text);
                com.Parameters.AddWithValue("@course", ddlCourse.SelectedItem.ToString());

                com.ExecuteNonQuery();
                Response.Write("Registration is Successful");
                Response.Redirect("LifestyleArticle1.aspx");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error Takhmina" + ex.ToString());
            }
        }

        protected void BttnReset_Click(object sender, EventArgs e)
        {
            txtFname.Text = string.Empty;
            txtLname.Text = string.Empty;
            txtUname.Text = string.Empty;
            txtPword.Text = string.Empty;
            txtEmail.Text = string.Empty;
            ddlCourse.SelectedIndex = 0;
        }
    }
}