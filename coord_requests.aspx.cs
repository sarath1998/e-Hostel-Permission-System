using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.SqlClient;
using System.Data;



public partial class Co_ordinators_coord_requests : System.Web.UI.Page
{
    string cs = "Server=LAPTOP-1J07RFAT\\MSSQLSERVER03; Initial Catalog=hostel permission system; Integrated Security=true;";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loadStores();
          }
        }

    
    protected void loadStores()
    {
        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("Select Reg_Number,Names,Hostel_ID,Room_No,Reason,Leaving_date,No_of_days,Parent_mobile,Warden,Current_Status from Stud_Requests", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();

    //for a dataadapter which fetches data, it requires a data set to fill the data it fetched
        da.Fill(ds);
       int count = ds.Tables[0].Rows.Count;
        //a data set is a collection of data tables
        //data set=table -0,table-1,table-2.....
        con.Close();

        if (ds.Tables[0].Rows.Count>0)//it checks whether the table-0 in the data set contains any rows?
        {
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }

        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());//it creates a row explicitly if no data is present in the data table
            GridView2.DataSource = ds;
            GridView2.DataBind();
            int ColoumnCount = GridView2.Rows[0].Cells.Count;
            Response.Write("No Data Found!!!");

        }
    }

    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
        string reg_id = GridView2.DataKeys[e.RowIndex].Values["Reg_Number"].ToString();
        Label status = (Label)GridView2.Rows[e.RowIndex].FindControl("change_approve");
        Label doleave = (Label)GridView2.Rows[e.RowIndex].FindControl("d_leave");//storing leaving date value touse in the query

        //status.ForeColor = System.Drawing.Color.Green;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        //Ekkada e table ki sambandinachina e command ayina rasukovachu
        SqlCommand up_com=new SqlCommand("update Stud_Requests set Current_Status='"+status.Text+ "' where Reg_Number='"+reg_id+ "' AND Leaving_date='"+ doleave.Text+"'", con );
        //SqlCommand up1 = new SqlCommand("INSERT INTO reg1(username, password, email)values('"+"supraja"+"', '"+"punjab"+"', '"+"suprajagsl@gmail.com"+"')", con);
        up_com.ExecuteNonQuery();
        //up1.ExecuteNonQuery();
        con.Close();
        loadStores();
    }

    /*protected void GridView2_RowUpdating1(object sender, GridViewUpdateEventArgs ee)
    {
        string reg_id = GridView2.DataKeys[ee.RowIndex].Values["Reg_Number"].ToString();//storing regno to use in the query
        Label status = (Label)GridView2.Rows[ee.RowIndex].FindControl("change_decline");
        //string status = "Coordinator Declined";
        
        status.ForeColor = System.Drawing.Color.Green;
        Label doleave = (Label)GridView2.Rows[ee.RowIndex].FindControl("d_leave");//storing leaving date value touse in the query
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlCommand up_com = new SqlCommand("update Stud_Requests set Current_Status='" + status.Text + "' where Reg_Number='" + reg_id + "' AND Leaving_date='" + doleave.Text + "'", con);
        
        up_com.ExecuteNonQuery();
        con.Close();
        loadStores();
    }*/

}








