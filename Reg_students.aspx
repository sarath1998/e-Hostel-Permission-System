<%@ Page Title="" Language="C#" MasterPageFile="~/master/Admin.master" AutoEventWireup="true" CodeFile="Reg_students.aspx.cs" Inherits="Admin_View_Data_Students_Reg_students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>STUDENTS REGISTERED LIST PAGE</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>List of Students Registered Table </h1>
    <div class="table-responsive">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Registation Number" DataSourceID="SqlDataSource1" AllowSorting="True" CellPadding="4" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Registation Number" HeaderText="Registation Number" ReadOnly="True" SortExpression="Registation Number" />
            <asp:BoundField DataField="Hostel Id" HeaderText="Hostel Id" SortExpression="Hostel Id" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Hostel Name" HeaderText="Hostel Name" SortExpression="Hostel Name" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Room No" HeaderText="Room No" SortExpression="Room No" />
            <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hostel permission systemConnectionString %>" SelectCommand="SELECT * FROM [stu_reg] ORDER BY [Year], [Registation Number], [Room No]"></asp:SqlDataSource>
        </div>
</asp:Content>

