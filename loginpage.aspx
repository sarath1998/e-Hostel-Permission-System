<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginpage.aspx.cs" Inherits="loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN PAGE</title>
   <meta name="viewport" content="width=device-width, initial-scale=1"/>
   <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="bootstrap-3.3.7-dist/js/jquery.min.js"></script>
  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/ type="text/css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
   
         <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                         <span class="icon-bar"></span>
                        <span class="icon-bar"></span>  
                    </button>
                <a class="navbar-brand" href="#"><b>e-Hostel Permission System</b></a>
                    </div>
                <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">
        <li><a href="home1.aspx">Home</a></li>
        <li><a href="view_coordinator.aspx">View Cordinators</a></li>
        <li><a href="view wardens.aspx">View Wardens</a></li>
        </ul>
        
                <ul class="nav navbar-nav navbar-right">
    <li><a href="#"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
    <li><a href="loginpage.aspx"><span class="glyphicon glyphicon-user"></span>Login</a></li>
                    </ul>
                </div>
                </div>

            </nav>
     
        
    <form id="form1" runat="server" class="form-horizontal">
        <div class="container">
       <h3 class="container-fluid">Login Credentials</h3>
  <br />
        <br />
        <div class="form-group">
       <asp:Label ID="Label1" runat="server" CssClass="control-label col-sm-2"><strong>User Id</strong></asp:Label>
       <div class="col-sm-10">
       <asp:TextBox ID="user_id" runat="server" CssClass="form-control" placeholder="Enter Registrartion No" Width="50%"></asp:TextBox>
   </div>
       </div>

        <div class="form-group">
            <asp:Label ID="Label2" runat="server"  CssClass="control-label col-sm-2"><strong>Password</strong></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="pass" runat="server" CssClass="form-control" Width="50%" placeholder="Enter password" TextMode="Password"></asp:TextBox>
            </div>
        </div>
        
        <div class="radio-inline"></div>
        <br />
        &nbsp;<asp:Label ID="Label3" runat="server"  CssClass="control-label col-sm-2"><strong>Role :</strong></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Student" GroupName="role" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Cordinator" GroupName="role" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton3" runat="server" Text="Warden" GroupName="role" />
        <br />
        <br />
        <br />
        <br />


        <div class="form-group">
            <div class="col-sm-offset-4 col-sm-10">
                <asp:Button ID="submit" runat="server" Text="Login" CssClass="btn btn-success" OnClick="Login_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cancel" runat="server" Text="Cancel" CssClass="btn btn-danger" OnClick="cancel_Click" />

            </div>
        </div>
            </div>
 </form>
    







</body>
   

</html>
