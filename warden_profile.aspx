<%@ Page Title="" Language="C#" MasterPageFile="~/master/warden.master" AutoEventWireup="true" CodeFile="warden_profile.aspx.cs" Inherits="warden_warden_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="container container-fluid">
            <h2>Warden Profile Page</h2>
    
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
                <asp:TextBox ID="branch" runat="server" CssClass="form-control" Width="25%" ></asp:TextBox>
           </div>
        </div>            
  
                <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Hostel" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="hostel" runat="server" CssClass="form-control" placeholder="2 or 3 letters length" Width="25%" Enabled="False" ></asp:TextBox>
           </div>
        </div>
        
                <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Email" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="eid" runat="server" CssClass="form-control" placeholder="email id" Width="25%" Enabled="True" ></asp:TextBox>
           </div>
        </div>

        <br />
        
        
        <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-14">
          <asp:Button ID="submit" runat="server" Text="Update" CssClass="btn-success" OnClick="submit_Click" />          
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="reset" runat="server" Text="Cancel" CssClass="btn-danger" Onclick="Page_Load"  />
      </div>
            </div>

        </div>
            </div>
</asp:Content>

