using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

public partial class students_View_Profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER03; Initial Catalog=hostel permission system; Integrated Security=true;");

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
                        hid.Text = reader.GetDecimal(2).ToString();
                        sid.Text = reader.GetDecimal(1).ToString();
                        Year.SelectedItem.Text = reader.GetString(5);
                        ddlgender.SelectedItem.Text = reader.GetString(3);
                        hostel.SelectedItem.Text = reader.GetString(4);
                        rno.Text = reader.GetString(6);
                        branch.SelectedItem.Text = reader.GetString(7);
                        mobile.Text = reader.GetDecimal(8).ToString();
                        email.Text = reader.GetString(9);
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
        }
    }


    protected void Update_Click(object sender, EventArgs e)
    {
        try
        {

            string str = "update stu_reg set Gender='" + ddlgender.SelectedItem.Text + "', Mobile='" + mobile.Text + "', Email='" + email.Text + "' where [Registation Number]='" + Convert.ToString(Session["id"]) + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            MessageBox.Show("Updated Successfully");


        }
        catch (Exception ee)
        {
            MessageBox.Show("Not Updated");
        }
        finally
        {
            con.Close();
        }
    }
    

    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("../students/Stu_LoggedIn.aspx");
    }
}