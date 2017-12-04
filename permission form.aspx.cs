using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
using System.Collections;
using System.IO;
using System.Data;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class permission_form : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER03; Initial Catalog=hostel permission system; Integrated Security=true;");
    connection con1 = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            try

            {
                SqlCommand cmd = new SqlCommand("select * from stu_reg where [Registation Number]='" + Session["id"] + "'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                {
                    if (reader.Read())
                    {
                        name.Text = reader.GetString(0);
                        hos_ID.Text = reader.GetDecimal(2).ToString();
                        reg_no.Text = reader.GetDecimal(1).ToString();
                        hostel_name.Text = reader.GetString(4);
                        room.Text = reader.GetString(6);
                        branch.Text = reader.GetString(7);
                        mobile.Text = reader.GetDecimal(8).ToString();
                    }

                }

            }
            catch (Exception ee)
            {
                MessageBox.Show("Session Timed Out");
                Response.Redirect("~/loginpage.aspx");
            }

            finally
            {
                con.Close();
            }
        } }

    protected void submit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            String k = con1.request_insert(reg_no.Text, name.Text, mobile.Text, hos_ID.Text, branch.Text, hostel_name.Text, room.Text, coordi.SelectedItem.Text, ddlwarden.SelectedItem.Text, reason.Text, leave_date.Text, no_of_days.Text, parent.Text,status.Text);
           
            //String k1 = con1.request_dummyinsert(reg_no.Text, name.Text, mobile.Text, hos_ID.Text, branch.Text, hostel_name.Text, room.Text, coordi.SelectedItem.Text, reason.Text, leave_date.Text, no_of_days.Text, parent.Text,status.Text);
            if (k == "1")
            {
                MessageBox.Show("Request Submitted"); 
                
            }
            else
            {
                MessageBox.Show("Submission Failed");
            }
        }
    }





  /*  protected void btnupload_Click(object sender, EventArgs e)
    {


        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        using (Stream fs = FileUpload1.PostedFile.InputStream)
        {
            using (BinaryReader br = new BinaryReader(fs))
            {

                string query = "insert into Stud_Requests values(@reg,@name,@mobile,@FilName,@Hostelid,@branch,@hostelname,@room,@coordno,@wardenno,@reason,@leavedate,@Noofdays,@parentmobile,@status)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {

                    cmd.Parameters.AddWithValue("@reg", reg_no.Text);
                    cmd.Parameters.AddWithValue("@name", name.Text);
                    cmd.Parameters.AddWithValue("@mobile", mobile.Text);
                    cmd.Parameters.AddWithValue("@Hostelid", hos_ID.Text);
                    cmd.Parameters.AddWithValue("@branch", branch.Text);
                    cmd.Parameters.AddWithValue("@hostelname", hostel_name.Text);
                    cmd.Parameters.AddWithValue("@room", room.Text);
                    cmd.Parameters.AddWithValue("@coordNo", coordi.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@wardenNo", ddlwarden.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@reason", reason.Text);
                    cmd.Parameters.AddWithValue("@leavedate", leave_date.Text);
                    cmd.Parameters.AddWithValue("@FilName", FileUpload1);
                    cmd.Parameters.AddWithValue("@Noofdays", no_of_days.Text);
                    cmd.Parameters.AddWithValue("@parentmobile", parent.Text);
                    cmd.Parameters.AddWithValue("@status", status.Text);


                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }




    }*/

    /*   FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Admin/Uploads/") + FileUpload1.FileName);
        filestatus.ForeColor = System.Drawing.Color.Green;
        filestatus.Text = "<b>File Uploaded Succesfully<b>";       

    }
    else
    {
        filestatus.ForeColor = System.Drawing.Color.Red;
        filestatus.Text = "<b>File not  uploaded<b> ";

    }*/









    protected void btnupload_Click1(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)

        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Admin/Uploads/") + FileUpload1.FileName);
            filestatus.ForeColor = System.Drawing.Color.Green;
            filestatus.Text = "<b>File Uploaded Succesfully<b>";
        }

        else
        {
            filestatus.ForeColor = System.Drawing.Color.Red;
            filestatus.Text = "<b>File not  uploaded<b> ";


        }
    }
}


