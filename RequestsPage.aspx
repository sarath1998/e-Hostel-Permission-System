<%@ Page Title="" Language="C#" MasterPageFile="~/master/warden.master" AutoEventWireup="true" CodeFile="RequestsPage.aspx.cs" Inherits="warden_RequestsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>WARDEN REQUESTS PAGE</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Warden Requests Page

    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Reg_Number,Leaving_date" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Reg_Number" HeaderText="Reg_Number" ReadOnly="True" SortExpression="Reg_Number" />
            <asp:BoundField DataField="Names" HeaderText="Names" SortExpression="Names" />
            <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
            <asp:BoundField DataField="Leaving_date" HeaderText="Leaving_date" ReadOnly="True" SortExpression="Leaving_date" />
            <asp:BoundField DataField="No_of_days" HeaderText="No_of_days" SortExpression="No_of_days" />
            <asp:BoundField DataField="Parent_mobile" HeaderText="Parent_mobile" SortExpression="Parent_mobile" />
            <asp:BoundField DataField="Current_Status" HeaderText="Current_Status" SortExpression="Current_Status" />
            <asp:BoundField DataField="Reason" HeaderText="Reason" SortExpression="Reason" />
            <asp:BoundField DataField="Room_No" HeaderText="Room_No" SortExpression="Room_No" />
            <asp:BoundField DataField="Coordinator" HeaderText="Coordinator" SortExpression="Coordinator" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Decision" ShowHeader="True" Text="Approve" />
            <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Dis Approve" ShowHeader="True" Text="Decline" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hostel permission systemConnectionString %>" 
        DeleteCommand="DELETE FROM [Stud_Requests] WHERE [Reg_Number] = @Reg_Number AND [Leaving_date] = @Leaving_date" 
        InsertCommand="INSERT INTO [Stud_Requests] ([Reg_Number], [Names], [Branch], [Leaving_date], [No_of_days], [Parent_mobile], [Current_Status], [Reason], [Room_No], [Coordinator], [Mobile]) VALUES (@Reg_Number, @Names, @Branch, @Leaving_date, @No_of_days, @Parent_mobile, @Current_Status, @Reason, @Room_No, @Coordinator, @Mobile)" 
        SelectCommand="SELECT [Reg_Number], [Names], [Branch], [Leaving_date], [No_of_days], [Parent_mobile], [Current_Status], [Reason], [Room_No], [Coordinator], [Mobile] FROM [Stud_Requests] WHERE ([Warden] = @Warden) ORDER BY [Room_No], [Leaving_date], [No_of_days]" 
        UpdateCommand="UPDATE [Stud_Requests] SET [Current_Status] = 'Allowed'  WHERE [Reg_Number] = @Reg_Number AND [Leaving_date] = @Leaving_date">
        <DeleteParameters>
            <asp:Parameter Name="Reg_Number" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Leaving_date" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Reg_Number" Type="Decimal" />
            <asp:Parameter Name="Names" Type="String" />
            <asp:Parameter Name="Branch" Type="String" />
            <asp:Parameter DbType="Date" Name="Leaving_date" />
            <asp:Parameter Name="No_of_days" Type="Decimal" />
            <asp:Parameter Name="Parent_mobile" Type="Decimal" />
            <asp:Parameter Name="Current_Status" Type="String" />
            <asp:Parameter Name="Reason" Type="String" />
            <asp:Parameter Name="Room_No" Type="String" />
            <asp:Parameter Name="Coordinator" Type="String" />
            <asp:Parameter Name="Mobile" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Warden" SessionField="id" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Names" Type="String" />
            <asp:Parameter Name="Branch" Type="String" />
            <asp:Parameter Name="No_of_days" Type="Decimal" />
            <asp:Parameter Name="Parent_mobile" Type="Decimal" />
            <asp:Parameter Name="Current_Status" Type="String" />
            <asp:Parameter Name="Reason" Type="String" />
            <asp:Parameter Name="Room_No" Type="String" />
            <asp:Parameter Name="Coordinator" Type="String" />
            <asp:Parameter Name="Mobile" Type="Decimal" />
            <asp:Parameter Name="Reg_Number" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Leaving_date" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    </asp:Content>

