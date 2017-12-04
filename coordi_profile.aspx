<%@ Page Title="" Language="C#" MasterPageFile="~/master/coordinator.master" AutoEventWireup="true" CodeFile="coordi_profile.aspx.cs" Inherits="Co_ordinators_coordi_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="../bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <script src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="../bootstrap-3.3.7-dist/js/jquery.min.js"></script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container container-fluid">
            <h2>Coordinator Profile Page</h2>
    
    <div class="form-horizontal">    
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="ID" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="reg_no" runat="server" CssClass="form-control" Width="25%" Enabled="False" ></asp:TextBox>
           </div>
        </div>   
        
        <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Name" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="name" runat="server" CssClass="form-control" Width="25%" ></asp:TextBox>
           </div>
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
                <asp:TextBox ID="branch" runat="server" CssClass="form-control" Width="25%" Enabled="false" ></asp:TextBox>
           </div>
        </div>            
  
                <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Hostel" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="hostel_name" runat="server" CssClass="form-control" placeholder="2 or 3 letters length" Width="25%" Enabled="False" ></asp:TextBox>
           &nbsp;&nbsp;
           </div>
           </div>

        <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Start Room" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="s_room" runat="server" CssClass="form-control" placeholder="2 or 3 letters length" Width="25%" Enabled="False" ></asp:TextBox>
           &nbsp;&nbsp;
           </div>
           </div>

        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="End Room" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="e_room" runat="server" CssClass="form-control" placeholder="2 or 3 letters length" Width="25%" Enabled="False" ></asp:TextBox>
           &nbsp;&nbsp;
           </div>
           </div>
      
        
                <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Email" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="email_name" runat="server" CssClass="form-control" placeholder="email id" Width="25%" Enabled="True" ></asp:TextBox>
           </div>
        </div>

        
                <div class="form-group">
            <asp:Label ID="Label9" runat="server" Text="Role" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="role" runat="server" CssClass="form-control"   placeholder="role name" Width="25%" Enabled="False" ></asp:TextBox>
           </div>
        </div>

        <br />
        
        
        <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-14">
          <asp:Button ID="btnupdate" runat="server" Text="Update" CssClass="btn-success" OnClick="btnupdate_Click" style="height: 26px" />          
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn-danger"  />
      </div>
            </div>

        </div>
            </div>

</asp:Content>

