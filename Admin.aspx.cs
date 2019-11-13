using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


        protected void insertButton_Click1(object sender, EventArgs e)
        {
            SqlDataSourceAdmin.InsertParameters["ID"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtID")).Text;
            SqlDataSourceAdmin.InsertParameters["FirstName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtFname")).Text;
            SqlDataSourceAdmin.InsertParameters["LastName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtLname")).Text;
            SqlDataSourceAdmin.InsertParameters["Username"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtUname")).Text;
            SqlDataSourceAdmin.InsertParameters["Password"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPword")).Text;
            SqlDataSourceAdmin.InsertParameters["Email"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtEmail")).Text;
            SqlDataSourceAdmin.InsertParameters["Course"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtCourse")).Text;

            SqlDataSourceAdmin.Insert();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }
    }
}