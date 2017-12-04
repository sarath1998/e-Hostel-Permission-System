<%@ Page Title="" Language="C#" MasterPageFile="~/master/Admin.master" AutoEventWireup="true" CodeFile="Reg_Wardens.aspx.cs" Inherits="Admin_View_Data_Wardens_Reg_Wardens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>VIEW REGISTERED WARDENS</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Registered Wardens Table</h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="Wardens">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
            <asp:BoundField DataField="Hostel Assigned" HeaderText="Hostel Assigned" SortExpression="Hostel Assigned" />
            <asp:BoundField DataField="Email Id" HeaderText="Email Id" SortExpression="Email Id" />
            <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="Wardens" runat="server" ConnectionString="<%$ ConnectionStrings:hostel permission systemConnectionString %>" SelectCommand="SELECT * FROM [Faculity_Reg] Where Role='Warden'"></asp:SqlDataSource>
</asp:Content>

