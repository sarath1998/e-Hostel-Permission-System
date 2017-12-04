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

public partial class students : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER03; Initial Catalog=hostel permission system; Integrated Security=true;");
    connection con1 = new connection();

    protected void Page_Load(object sender, EventArgs e)
    {

       
    }

   

    
        protected void submit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            String k = con1.stud_insert(name.Text, hid.Text, sid.Text, hostel.SelectedItem.Text, Year.SelectedItem.Text, ddlgender.SelectedItem.Text, rno.Text, branch.SelectedItem.Text, mobile.Text, idname.Text);
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