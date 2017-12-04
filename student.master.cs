using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

public partial class master_student : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER03; Initial Catalog=hostel permission system; Integrated Security=true;");
   
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        userid.Text = Session["Name"].ToString();
    }
}
