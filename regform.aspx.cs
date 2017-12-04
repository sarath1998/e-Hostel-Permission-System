using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class regform : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RegisterUser(object sender, EventArgs e)
    {
        int userid = 0;
        string cs = "Server=LAPTOP-1J07RFAT\\MSSQLSERVER03; Initial Catalog=hostel permission system; Integrated Security=true;";
        using (SqlConnection con = new SqlConnection(cs))
        {
            using (SqlCommand cmd = new SqlCommand("insertuser1"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@username", txtUsername.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                    cmd.Connection = con;
                    con.Open();
                    userid = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }
            }

            string message =string.Empty;
            switch (userid)
            {
                case -1:
                    message = "Username already exists";
                    break;

                case -2:
                    message = "Email address has already been used";
                    break;

                default:
                    message = "Registartion Successfull. Activation Email has been sent ";
                    SendActivationEmail(userid);
                    //userId: " + userId.ToString();
                    break;
            }

            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
             

        }


    }


    private void SendActivationEmail(int userid)
    {
        string cs = "Server=LAPTOP-1J07RFAT\\MSSQLSERVER03; Initial Catalog=hostel permission system; Integrated Security=true;";
        string activationcode = Guid.NewGuid().ToString();

        using (SqlConnection con = new SqlConnection(cs))
        {
            using (SqlCommand cmd1 = new SqlCommand("INSERT INTO reg_activate values(@user_id,@activationcode)"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd1.CommandType = CommandType.Text;
                    cmd1.Parameters.AddWithValue("@user_id", userid);
                    cmd1.Parameters.AddWithValue("@activationcode", activationcode);
                    cmd1.Connection = con;
                    con.Open();
                    cmd1.ExecuteNonQuery();
                    con.Close();

                }
            }


        }
        using (MailMessage mm = new MailMessage("gandhi.rachuputi@gmail.com", txtEmail.Text))
        {
            mm.Subject = "Account Actvation";
            string body = "Hello " + txtUsername.Text.Trim() + ",";
            body += "<br/><br/>Please click the follwing link to activate your account";
            body += "<br/><a href='http://localhost:64489/Activation.aspx?ActivationCode=activationcode'>Click here to activate</a>";
            body += "<br/><br/>Thanks";
            mm.Body = body;
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential networkcred = new NetworkCredential("gandhi.rachuputi@gmail.com", "narendramodi99");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = networkcred;
            smtp.Port = 587;
            smtp.Send(mm);
        }
    }


}