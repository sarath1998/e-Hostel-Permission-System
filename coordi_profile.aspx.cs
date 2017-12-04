using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

public partial class Co_ordinators_coordi_profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER03; Initial Catalog=hostel permission system; Integrated Security=true;");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Faculity_Reg where ID='" + Session["id"] + "'", con);
            
            SqlDataReader reader = cmd.ExecuteReader();
            {
                if (reader.Read())
                {
                    reg_no.Text = reader.GetString(0);
                    name.Text = reader.GetString(1);
                    mobile.Text = reader.GetDecimal(2).ToString();
                    hostel_name.Text = reader.GetString(5);
                    branch.Text = reader.GetString(4);
                    email_name.Text = reader.GetString(8);
                    s_room.Text = reader.GetString(6);
                    e_room.Text = reader.GetString(7);
                    role.Text = reader.GetString(9);
                }

            }
            con.Close();
        }

    }





    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {

            string str = "update Faculity_Reg set Name='" + name.Text + "', Mobile='" + mobile.Text + "', [Email Id]='" + email_name.Text + "' where ID='" +Session["id"] + "'";
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
}