<%@ Page Title="" Language="C#" MasterPageFile="~/master/Admin.master" AutoEventWireup="true" CodeFile="Stud_requests.aspx.cs" Inherits="Admin_View_Data_Students_Stud_requests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>STUDENT REQUEST TABLE PAGE</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Students Requests Table Page</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Reg_Number,Leaving_date" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Reg_Number" HeaderText="Reg_Number" ReadOnly="True" SortExpression="Reg_Number" />
            <asp:BoundField DataField="Names" HeaderText="Names" SortExpression="Names" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            <asp:BoundField DataField="Hostel_ID" HeaderText="Hostel_ID" SortExpression="Hostel_ID" />
            <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
            <asp:BoundField DataField="Hostel_Name" HeaderText="Hostel_Name" SortExpression="Hostel_Name" />
            <asp:BoundField DataField="Room_No" HeaderText="Room_No" SortExpression="Room_No" />
            <asp:BoundField DataField="Coordinator" HeaderText="Coordinator" SortExpression="Coordinator" />
            <asp:BoundField DataField="Warden" HeaderText="Warden" SortExpression="Warden" />
            <asp:BoundField DataField="Reason" HeaderText="Reason" SortExpression="Reason" />
            <asp:BoundField DataField="Leaving_date" HeaderText="Leaving_date" ReadOnly="True" SortExpression="Leaving_date" />
            <asp:BoundField DataField="No_of_days" HeaderText="No_of_days" SortExpression="No_of_days" />
            <asp:BoundField DataField="Parent_mobile" HeaderText="Parent_mobile" SortExpression="Parent_mobile" />
            <asp:BoundField DataField="Current_Status" HeaderText="Current_Status" SortExpression="Current_Status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hostel permission systemConnectionString %>" SelectCommand="SELECT * FROM [Stud_Requests] ORDER BY [Hostel_Name], [Room_No]"></asp:SqlDataSource>
    </asp:Content>

