<%@ Page Language="C#" AutoEventWireup="true" CodeFile="permission form.aspx.cs" Inherits="permission_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PERMISSION FORM</title>
   <link rel="stylesheet" href="../bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
  <script src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  <script src="../bootstrap-3.3.7-dist/js/jquery.min.js"></script>
</head>


<body>
        <div class="container container-fluid">
            <h2>Permission Form</h2>
    <form id="form1" runat="server" class="form-horizontal">
        
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Registration Number" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="reg_no" runat="server" CssClass="form-control" Enabled="false" Width="25%" ></asp:TextBox>
           </div>
        </div>   
        
        <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Name" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="name" runat="server" CssClass="form-control" Width="25%" Enabled="false" ></asp:TextBox>
           </div>
        </div>  

         <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="Mobile" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="mobile" runat="server" CssClass="form-control" Width="25%" TextMode="Number" ></asp:TextBox>
           </div>
        </div>  

              <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Hostel Id" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="hos_ID" runat="server" CssClass="form-control" Enabled="false" Width="25%" ></asp:TextBox>
           </div>
        </div>      
        
              <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Branch" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="branch" runat="server" CssClass="form-control" Width="25%" Enabled="false" ></asp:TextBox>
           </div>
        </div>          
        
               <div class="form-group">
            <asp:Label ID="Label11" runat="server" Text="Hostel" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="hostel_name" runat="server" CssClass="form-control" Enabled="false" Width="25%" ></asp:TextBox>
           </div>
                  </div>
  
              <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Room No" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="room" runat="server" CssClass="form-control" Enabled="false" Width="25%" ></asp:TextBox>
           
           </div>
                  </div>

           <div class="form-group">
            <asp:Label ID="Label12" runat="server" Text="Coordinator Id" CssClass="control-label col-sm-2"></asp:Label>
               &nbsp;&nbsp;&nbsp;
               <asp:DropDownList ID="coordi" runat="server" DataSourceID="Coordinators"   DataValueField="ID" Height="35px" Width="130px"></asp:DropDownList>
                  <asp:SqlDataSource ID="Coordinators" runat="server" ConnectionString="<%$ ConnectionStrings:hostel permission systemConnectionString %>" SelectCommand="SELECT [ID] FROM [Faculity_Reg] WHERE (([Branch] = @Branch) AND ([Hostel Assigned] = @Hostel_Assigned) AND ([From] &lt;= @From) AND ([To] &gt;= @To))">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="branch" Name="Branch" PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="hostel_name" Name="Hostel_Assigned" PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="room" Name="From" PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="room" Name="To" PropertyName="Text" Type="String" />
                      </SelectParameters>
               </asp:SqlDataSource>
                  </div>

        <div class="form-group">
            <asp:Label ID="Label13" runat="server" Text="Warden Id" CssClass="control-label col-sm-2"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlwarden" runat="server" DataSourceID="SqlDataSource1"  DataTextField="ID" DataValueField="ID" Height="35px" Width="130px"></asp:DropDownList>
           
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hostel permission systemConnectionString %>" SelectCommand="SELECT [ID] FROM [Faculity_Reg] WHERE (([Hostel Assigned] = @Hostel_Assigned) AND ([Role] = @Role))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="hostel_name" Name="Hostel_Assigned" PropertyName="Text" Type="String" />
                    <asp:Parameter DefaultValue="Warden" Name="Role" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
           
           </div>
           
         <div class="form-group">
            <asp:Label ID="Label9" runat="server" Text="Reason" CssClass="control-label col-sm-2"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="reason" runat="server" CssClass="form-control" Width="25%" Rows="3" TextMode="MultiLine" ></asp:TextBox>                
            </div>
                  </div>

                        <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Leaving date" CssClass="control-label col-sm-2"></asp:Label>
                          <div class="col-sm-10">
                <asp:TextBox ID="leave_date" runat="server" CssClass="form-control" Width="25%" TextMode="Date"></asp:TextBox>
           </div>
                            </div>

        <div class="form-group">
            <asp:Label ID="labelFile" runat="server" Text="Upload a File" CssClass="control-label col-sm-2"></asp:Label> 
            &nbsp;&nbsp;&nbsp; 
            <asp:FileUpload ID="FileUpload1"  Width="25%" runat="server" />
            <asp:Label ID="filestatus" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnupload" runat="server"  Text="Upload" OnClick="btnupload_Click1" />
        </div>
        
                        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="No of days" CssClass="control-label col-sm-2"></asp:Label>
                          <div class="col-sm-10">
                <asp:TextBox ID="no_of_days" runat="server" CssClass="form-control" Width="25%" TextMode="Number" ToolTip="Enter a number" ></asp:TextBox>
           </div>
                            </div>

        <div class="form-group">
            <asp:Label ID="Label10" runat="server" Text="Parent Mobile" CssClass="control-label col-sm-2"></asp:Label>
                          <div class="col-sm-10">
                <asp:TextBox ID="parent" runat="server" CssClass="form-control" Width="25%" placeholder="enter 10 digit number" TextMode="Number" ToolTip="Enter a number" ></asp:TextBox>
           </div>
                            </div>

         <div class="form-group">
            <asp:Label ID="status" runat="server"   Visible="False"  Text="In Processing" CssClass="control-label col-sm-2"></asp:Label>
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
