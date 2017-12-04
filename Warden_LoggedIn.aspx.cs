using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows;
using System.Web.Security;

public partial class warden_Warden_LoggedIn : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER03;Initial catalog=hostel permission system; Integrated Security=True;");

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["name"] != null)
            {
                con.Open();
                name.Text = Session["name"].ToString();
            }
            else
            {
                Session.Clear();
                Response.Redirect("~//Homepage.aspx");
            }
        }
        catch(Exception ee)
        {
            
            Response.Redirect("~/loginpage.aspx");
        }
    }
}
