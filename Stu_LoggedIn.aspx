<%@ Page Title="" Language="C#" MasterPageFile="~/master/student.master" AutoEventWireup="true" CodeFile="Stu_LoggedIn.aspx.cs" Inherits="students_Stu_LoggedIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="well well-sm" style="margin-top: 4%">
	<h2>Welcome <asp:label runat="server" ID="name"></asp:label> </h2>
</div>
</asp:Content>

