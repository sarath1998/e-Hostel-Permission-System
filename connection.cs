using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data;


public class connection
{

    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER03;Initial catalog=hostel permission system; Integrated Security=True;");
    DataTable reg = new DataTable();
    public connection()
    {
        
    }

    public string stud_insert(string name, string hid, string sid, string hostel_name, string year, string gender, string room_no, string branch, string mobile, string emailid )
    {
        try
        {
            //data table cloumn names firstname,lastname,emailid......
            string y = "insert into stu_reg( Name, [Registation Number],[Hostel Id],[Hostel Name], Year, Gender, [Room No], Branch, Mobile, Email ) values('" + name + "', '" + sid + "', '" + hid + "', '" + hostel_name + "','" + year + "','" + gender + "', '" + room_no + "','" + branch + "','" + mobile + "','" + emailid + "')";
            SqlCommand cmd = new SqlCommand(y, con);
            con.Open();
            cmd.ExecuteNonQuery().ToString();
            con.Close();
            return "1";
        }
        catch (Exception ex)
        {
            return "0";
        }
    }


    public string faculity_insert(string id_no, string name, string gender, string mobile, string branch, string hostel, string from_room, string to_room, string email, string role)
    {
        try
        {
            //data table cloumn names firstname,lastname,emailid......
            string y = "insert into Faculity_Reg( ID, Name, Mobile, Gender, Branch, [Hostel Assigned], [From], [To], [Email Id], Role) values('" + id_no + "', '" + name + "', '" + mobile + "', '" + gender + "','" + branch+ "', '" + hostel + "','" + from_room + "','" +to_room + "','" + email + "','" + role + "')";
            SqlCommand cmd = new SqlCommand(y, con);
            con.Open();
            cmd.ExecuteNonQuery().ToString();
            con.Close();
            return "1";
        }
        catch (Exception ex)
        {
            return "0";
        }
    }

    //Student Permissions

  /*  public string request_insert(string reg, string name, string mobile_no, string hostel_id, string branch, string hostel, string room_no, string coord, string reasons, string leaving_date, string days, string parentno,str)
    {
        try
        {

            //data table cloumn names firstname,lastname,emailid......
            string y = "insert into Stud_Requests( Reg_Number, Names, Mobile, Hostel_ID, Branch, [Hostel Name], Room_No, Coordinator, Reason, Leaving_date, No_of_days, Parent_mobile) values('" + reg + "', '" + name + "', '" + mobile_no + "',  '" + hostel_id + "','" + branch + "','" + hostel + "','" + room_no + "','" + coord + "','" + reasons + "', '" + leaving_date + "','" + days + "','" + parentno + "')";
            SqlCommand cmd = new SqlCommand(y, con);
            con.Open();
            cmd.ExecuteNonQuery().ToString();
            con.Close();
            return "1";
        }
        catch (Exception ex)
        {
            return "0";
        }
    }*/


    public string request_insert(string reg, string name, string mobile_no, string hostel_id, string branch, string hostel, string room_no, string coord, string warden, string reasons, string leaving_date, string days, string parentno, string current_status)
    {
        try
        {

            //data table cloumn names firstname,lastname,emailid......
            string z = "insert into Stud_Requests( Reg_Number, Names, Mobile, Hostel_ID, Branch, Hostel_Name, Room_No, Coordinator,Warden, Reason, Leaving_date, No_of_days, Parent_mobile, Current_Status) values('" + reg + "', '" + name + "', '" + mobile_no + "',  '" + hostel_id + "','" + branch + "','" + hostel + "','" + room_no + "','" + coord + "','" + warden + "','" + reasons + "', '" + leaving_date + "','" + days + "','" + parentno + "','" + current_status + "')";
          
            SqlCommand cmd = new SqlCommand(z, con);
            con.Open();
            cmd.ExecuteNonQuery().ToString();
            con.Close();
            return "1";
        }
        catch (Exception ex)
        {
            return "0";
        }
    }



}