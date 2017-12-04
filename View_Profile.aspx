<%@ Page Title="" Language="C#" MasterPageFile="~/master/student.master" AutoEventWireup="true" CodeFile="View_Profile.aspx.cs" Inherits="students_View_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>STUDENTS  PROFILE PAGE</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  
    <div class="form-horizontal">
     <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Name" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="name" runat="server" CssClass="form-control" Width="25%" Enabled="false" placeholder="Full Name"  ></asp:TextBox>
           </div>
        </div>   
       <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Hostel Id" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="hid" runat="server" CssClass="form-control" Width="25%" Enabled="false" placeholder="Enter 1o digit Hostel Id (20150..)" TextMode="Number" ></asp:TextBox>
           </div>
        </div>   

         <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Registration No" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="sid" runat="server" CssClass="form-control" Enabled="false" Width="25%" placeholder="121031..." TextMode="Number" ></asp:TextBox>
           </div>
        </div>   
            
        
        <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="Year"  CssClass="control-label col-sm-2"></asp:Label>
        &nbsp;&nbsp;
        <asp:DropDownList ID="Year" runat="server" Height="35px" Width="130px" Enabled="false" >
            <asp:ListItem Text="--Select Year--" Value=""></asp:ListItem>
            <asp:ListItem>I</asp:ListItem>
            <asp:ListItem>II</asp:ListItem>
            <asp:ListItem>III</asp:ListItem>
            <asp:ListItem>IV</asp:ListItem>
        </asp:DropDownList>
        </div>


        <div class="form-group">
            <asp:Label ID="label10" runat="server" CssClass="control-label col-sm-2" Text="Gender"></asp:Label>
            &nbsp;&nbsp;
            <asp:DropDownList ID="ddlgender" Height="35px" Width="130px" runat="server">
            <asp:ListItem Text="--Select Gender--" Value=""></asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            </div>
           
       

         <div class="form-group">
            <asp:Label ID="label11" runat="server" CssClass="control-label col-sm-2" Text="Hostel Name"></asp:Label>
            &nbsp;&nbsp;
            <asp:DropDownList ID="hostel" Height="35px" Width="130px" runat="server" Enabled="false">
            <asp:ListItem Text="--Select Hostel--" Value=""></asp:ListItem>
            <asp:ListItem>DDS</asp:ListItem>
            <asp:ListItem>RBS</asp:ListItem>
            <asp:ListItem>Sadharma</asp:ListItem>
            <asp:ListItem>Nirmala Sadhan</asp:ListItem>
            <asp:ListItem>VS</asp:ListItem>
            </asp:DropDownList>
            </div>


         <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Room No" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="rno" runat="server" CssClass="form-control" Width="25%" Enabled="false"  placeholder="534/215-A..."></asp:TextBox>
           </div>
        </div>   


         <div class="form-group">
            <asp:Label ID="label6" runat="server" CssClass="control-label col-sm-2" Text="Branch"></asp:Label>
            &nbsp;&nbsp;
            <asp:DropDownList ID="branch" Height="35px" Enabled="false" Width="130px" runat="server">
          
           <asp:ListItem>CSE</asp:ListItem>
            <asp:ListItem>ECE</asp:ListItem>
            <asp:ListItem>CIVIL</asp:ListItem>
            <asp:ListItem>MECH</asp:ListItem>
            <asp:ListItem>BIOTECH</asp:ListItem>
            <asp:ListItem>IT</asp:ListItem>
            <asp:ListItem>EEE</asp:ListItem>
            </asp:DropDownList>
            </div>



        
         <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Mobile" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="mobile" runat="server" CssClass="form-control" Width="25%" placeholder="Enter 10 digit Mobile Number" TextMode="Number" ></asp:TextBox>
           </div>
        </div>   


         <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Email" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="email" runat="server" CssClass="form-control" Width="25%" placeholder="Enter Your Email Id" TextMode="Email" ></asp:TextBox>
           </div>
        </div>   
 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <strong>
            <asp:Button ID="Update" runat="server" Text="Update" Width="132px" CssClass="btn-success" Height="45px" OnClick="Update_Click" />
           </strong>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <strong>
            <asp:Button ID="cancel" runat="server" Text="Cancel" Width="132px" Height="45px" CssClass="btn-danger" OnClick="cancel_Click" />
        <br />
           </strong>
&nbsp;&nbsp;
            </div>
    

</asp:Content>

