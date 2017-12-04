using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Windows.Forms;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class students_Requests_Made : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER03; Initial Catalog=hostel permission system; Integrated Security=true;");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            DisplayRecord();
            DisplayFile();
            con.Close();
        }
    }

    public DataTable DisplayRecord()
    {
        SqlDataAdapter sd1 = new SqlDataAdapter("select  Mobile, Hostel_Name, Room_No, Coordinator, Reason, Leaving_date, No_of_days, Parent_mobile, Current_Status from Stud_Requests where Reg_Number='" + Session["id"].ToString() + "' and  Names='" + Session["name"].ToString() + "'", con);
        DataTable dt = new DataTable();
        sd1.Fill(dt);
              grid1.DataSource = dt;
        grid1.DataBind();

        return dt;

    }


     public DataTable DisplayFile()
     {
         DataTable dt1 = new DataTable(); 
         dt1.Columns.Add("File", typeof(string));
         //File acts as Column Name

         foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Admin/Uploads")))
         {
             FileInfo fi = new FileInfo(strFile);
             dt1.Rows.Add(fi.Name);

             //it adds the the data into the gridvew controli.e, file name details

             //FileInfo class retreives all info about file like its size,type ,name
             //StrFile displays name of the file
         }

         grid2.DataSource = dt1;
         grid2.DataBind();
         return dt1;
             }



     protected void grid2_RowCommand(object sender, GridViewCommandEventArgs e)
     {
         if(e.CommandName == "Download")
         {
             Response.Clear();
             Response.ContentType = "application/octect-stream";
             Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
             Response.TransmitFile(Server.MapPath("~/Admin/Uploads/") + e.CommandArgument);
             Response.End();
         }
     }
    


}