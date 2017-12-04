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
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class warden_registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER03; Initial Catalog=hostel permission system; Integrated Security=true;");
    connection con1 = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
                {
           
            String k = con1.faculity_insert(id.Text, name.Text, ddlgender.SelectedItem.Text, mobile.Text, branch.SelectedItem.Text, hostel.SelectedItem.Text, from.Text,to.Text, email.Text, ddlrole.SelectedItem.Text   );
            if (k == "1")
            {
                MessageBox.Show("Inserted successfully");

            }
            else
            {
                MessageBox.Show("Not Inserted");
            }
        }
    }
}