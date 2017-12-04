<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stu_reg.aspx.cs" Inherits="students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>STUDENTS REGISTRATION PAGE</title>
     <meta charset="utf-8"/>
     <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <link rel="stylesheet" href="../../bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <script src="../../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="../../bootstrap-3.3.7-dist/js/jquery.min.js"></script>

</head>

<body>
    
     <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
     <h1> Registration page</h1>
    </div>
      </div>
      </nav>
    
    <form id="form1" runat="server" class="form-horizontal">
    
    <div class="container-fluid">
        
            <h3>Enter the details&nbsp;&nbsp; </h3>
        
        <br />
&nbsp;
            <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Name" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="name" runat="server" CssClass="form-control" Width="25%" placeholder="Full Name" ></asp:TextBox>
           </div>
        </div>   
       <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Hostel Id" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="hid" runat="server" CssClass="form-control" Width="25%" placeholder="Enter 1o digit Hostel Id (20150..)" ></asp:TextBox>
           </div>
        </div>   

         <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Registration No" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="sid" runat="server" CssClass="form-control" Width="25%" placeholder="121031..." ></asp:TextBox>
           </div>
        </div>   
            
        
        <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="Year" CssClass="control-label col-sm-2"></asp:Label>
        &nbsp;&nbsp;
        <asp:DropDownList ID="Year" runat="server" Height="35px" Width="130px" >
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
            <asp:DropDownList ID="ddlgender" CssClass="control-label col-sm-2" Height="35px" Width="130px" runat="server">
            <asp:ListItem Text="--Select Gender--" Value=""></asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            </div>
           
       

         <div class="form-group">
            <asp:Label ID="label11" runat="server" CssClass="control-label col-sm-2" Text="Hostel Name"></asp:Label>
            &nbsp;&nbsp;
            <asp:DropDownList ID="hostel" Height="35px" CssClass="control-label col-sm-2" Width="130px" runat="server">
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
                <asp:TextBox ID="rno" runat="server" CssClass="form-control" Width="25%" placeholder="534/215-A..."></asp:TextBox>
           </div>
        </div>   


         <div class="form-group">
            <asp:Label ID="label6" runat="server" CssClass="control-label col-sm-2" Text="Branch"></asp:Label>
            &nbsp;&nbsp;
            <asp:DropDownList ID="branch" Height="35px" Width="130px" runat="server">
          
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
                <asp:TextBox ID="mobile" runat="server" CssClass="form-control" Width="25%" placeholder="Enter 10 digit Mobile Number" ></asp:TextBox>
           </div>
        </div>   
        
         <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Email" CssClass="control-label col-sm-2"></asp:Label>
             <div class="col-sm-10">
                <asp:TextBox ID="idname" runat="server" CssClass="form-control" Width="25%" placeholder="Enter Your email id" ></asp:TextBox>
           </div>
        </div>   
        
        
               
         
        
       

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <strong>
            <asp:Button ID="submit" runat="server" Text="Submit" Width="132px" CssClass="btn-success" Height="45px" OnClick="submit_Click" />
           </strong>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <strong>
            <asp:Button ID="cancel" runat="server" Text="Cancel" Width="132px" Height="45px" CssClass="btn-danger" />
        <br />
           </strong>
&nbsp;&nbsp;
            </div>
    </form>
</body>
</html>
