using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

public partial class warden_warden_profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER03; Initial Catalog=hostel permission system; Integrated Security=true;");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        try
        {


            SqlCommand cmd = new SqlCommand("select * from Faculity_Reg where ID='" + Session["id"] + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            {
                if (reader.Read())
                {
                    reg_no.Text = reader.GetDecimal(0).ToString();
                    name.Text = reader.GetString(1);
                    mobile.Text = reader.GetDecimal(2).ToString();
                    hostel.Text = reader.GetString(5);
                    branch.Text = reader.GetString(4);
                    eid.Text = reader.GetString(6);
                }

            }
        }
        catch(Exception ee)
        {
            MessageBox.Show("Session Timed out! Please Logn again");
            Response.Redirect("~/loginpage.aspx");
        }


    }

    protected void submit_Click(object sender, EventArgs e)
    {

    }
}