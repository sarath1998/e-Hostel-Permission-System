<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Faculity_reg.aspx.cs" Inherits="warden_registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WARDEN REGISTRATION PAGE</title>
    <link rel="stylesheet" href="../../bootstrap-3.3.7-dist/css/bootstrap.min.css" />
 <script src="../../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
 <script src="../../bootstrap-3.3.7-dist/js/jquery.min.js"></script>
 
</head>
 <body>
        <div class="container container-fluid">
            <h2>Warden/Coordinator Registration</h2>
    <form id="form1" runat="server" class="form-horizontal">
        
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="ID" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="id" runat="server" CssClass="form-control" MaxLength="10" placeholder="Enter Your 10 digit Unique ID" Width="25%" ></asp:TextBox>
           </div>
        </div>   
        
        <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Name" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="name" runat="server" CssClass="form-control" placeholder="Enter Your Full Name" Width="25%" ></asp:TextBox>
           </div>
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
            <asp:Label ID="Label8" runat="server" Text="Mobile" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="mobile" runat="server" CssClass="form-control" Width="25%" TextMode="Number" ></asp:TextBox>
           </div>
        </div>  

              
        
              <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Branch" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
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
        </div>            
  
                <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Hostel" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:DropDownList ID="hostel" Height="35px" Width="130px" runat="server">
            <asp:ListItem Text="--Select Hostel--" Value=""></asp:ListItem>
            <asp:ListItem>DDS</asp:ListItem>
            <asp:ListItem>RBS</asp:ListItem>
            <asp:ListItem>Sadharma</asp:ListItem>
            <asp:ListItem>Nirmala Sadhan</asp:ListItem>
            <asp:ListItem>VS</asp:ListItem>
            </asp:DropDownList>
           </div>
        </div>   


         <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="From" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="from" runat="server" CssClass="form-control" placeholder="Enter Starting Room No" Width="25%"  ></asp:TextBox>
           </div>
        </div>


         <div class="form-group">
            <asp:Label ID="Label9" runat="server" Text="To" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="to" runat="server" CssClass="form-control" placeholder="Enter ending Room No" Width="25%"  ></asp:TextBox>
           </div>
        </div>
        
                <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Email" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Enter Your Email" Width="25%" TextMode="Email" ></asp:TextBox>
           </div>
        </div>
        
        <div class="form-group">
        <asp:Label ID="Label5" runat="server"  CssClass="control-label col-sm-2">Role :</asp:Label>
       <div class="col-sm-10">
                <asp:DropDownList ID="ddlrole" Height="35px" Width="130px" runat="server">
            <asp:ListItem Text="--Select Role--" Value=""></asp:ListItem>
            <asp:ListItem>Coordinator</asp:ListItem>
            <asp:ListItem>Warden</asp:ListItem>
           
            </asp:DropDownList>
           </div>
        </div>


        <br />
        
        
        <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-14">
          <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn-success" OnClick="submit_Click" />          
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="reset" runat="server" Text="Reset" CssClass="btn-danger" Onclick="Page_Load"  />
      </div>
            </div>
</form>
        </div>

</body>



</html>
