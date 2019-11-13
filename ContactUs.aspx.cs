using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

namespace Assignment
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {

            try
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("takhmina070@mail.com");
                mailMessage.To.Add("takhmina070@mail.com");
                mailMessage.Subject = txtSubject.Text;

                mailMessage.Body = "<b>Sender Name: </b>" + txtName.Text + "<br/>"
                    + "<b>Sender Email: </b>" + txtEmail.Text + "<br/>"
                    + "<b>Message: </b>" + txtMessage.Text + "<br/>";
                mailMessage.IsBodyHtml = true;



                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("takhmina070@gmail.com", "");
                smtpClient.Send(mailMessage);
                Label1.Text = "Message Sent Sucessfully";

                txtName.Enabled = false;
                txtSubject.Enabled = false;
                txtEmail.Enabled = false;
                txtMessage.Enabled = false;

                btnSend.Enabled = false; 


            }
            catch (Exception ex)
            {
                Response.Write("Error Takhmina" + ex.ToString());
            }


        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtSubject.Text = "";
            txtMessage.Text = "";

        }
    }
}