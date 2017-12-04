<%@ Page Title="" Language="C#" MasterPageFile="~/master/Admin.master" AutoEventWireup="true" CodeFile="reg_coord.aspx.cs" Inherits="Admin_View_Data_Coordinators_reg_coord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>REGISTERED COORDINAORS TABLE PAGE</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Registered Coordinators Table </h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="Coordinators">
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
<asp:SqlDataSource ID="Coordinators" runat="server" ConnectionString="<%$ ConnectionStrings:hostel permission systemConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Faculity_Reg] WHERE ([Role] = 'Coordinator')"></asp:SqlDataSource>
</asp:Content>

