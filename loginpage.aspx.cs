using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

public partial class loginpage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER03; Initial Catalog=hostel permission system; Integrated Security=true;");
    connection con1 = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    

    protected void Login_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        {
            if((RadioButton1.Checked)  && pass.Text=="password")
            { 
                SqlDataAdapter da = new SqlDataAdapter("select Name from stu_reg where [Registation Number]='" + user_id.Text + "'", con);
                con.Open();
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count == 0)
                {
                    MessageBox.Show("Invalid UserName or Password");
                }
                else if (dt.Rows.Count > 0)
                {
                    Session["name"] = dt.Rows[0][0].ToString();
                    Session["id"] = user_id.Text;
                    //MessageBox.Show(dt.Rows[0][0].ToString());
                    Response.Redirect("students/Stu_LoggedIn.aspx");
                    Session.RemoveAll();
                }
                con.Close();
            }


            if ((RadioButton2.Checked) && pass.Text == "password")
            {
                string s = "Coordinator";
                SqlDataAdapter da = new SqlDataAdapter("select Name,Role from Faculity_reg where ID='" + user_id.Text + "'", con);
                con.Open();
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count == 0)
                {
                    MessageBox.Show("Invalid UserName or Password");
                }
                else if (dt.Rows.Count > 0 && s== dt.Rows[0][1].ToString())
                {
                    Session["name"] = dt.Rows[0][0].ToString();
                    Session["id"] = user_id.Text;
                   // MessageBox.Show(dt.Rows[0][0].ToString()); ---it shows the  name field of the tuple fetched from sql command
                    //MessageBox.Show(dt.Rows[0][1].ToString()); -- it shows the role field of the tupple fethched from sql commnad
                    //since we get only one tupple from the above query, we used [0][0] or [0][1] to access the values
                      // if more values arise then [1][0] or [1][1] etc., 
                    Response.Redirect("Co-ordinators/Coord_LoggedIn.aspx");
                    Session.RemoveAll();
                }
                con.Close();
            }



            if ((RadioButton3.Checked) && pass.Text == "password")
            {
                string s = "Warden";
                SqlDataAdapter da = new SqlDataAdapter("select Name,Role from Faculity_reg where ID='" + user_id.Text + "'", con);
                con.Open();
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count == 0)
                {
                    MessageBox.Show("Invalid UserName or Password");
                }
                else if (dt.Rows.Count > 0 && s == dt.Rows[0][1].ToString())
                {
                    Session["name"] = dt.Rows[0][0].ToString();
                    Session["id"] = user_id.Text;
                     //MessageBox.Show(dt.Rows[0][0].ToString()); //---it shows the  name field of the tuple fetched from sql command
                    //MessageBox.Show(dt.Rows[0][1].ToString()); //-- it shows the role field of the tupple fethched from sql commnad
                    //since we get only one tupple from the above query, we used [0][0] or [0][1] to access the values
                    // if more values arise then [1][0] or [1][1] etc., 
                    //MessageBox... command is used for testing purpose

                    Response.Redirect("warden/Warden_LoggedIn.aspx");
                    Session.RemoveAll();
                }

                
                con.Close();
            }

            if (user_id.Text == "admin" && pass.Text == "admin")
            {

                Session["name"] = user_id.Text;
                Response.Redirect("Admin/Admin_LoggedIn.aspx");
            }







        }

    }

    protected void cancel_Click(object sender, EventArgs e)
    {

    }
}