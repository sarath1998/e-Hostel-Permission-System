<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_coordinator.aspx.cs" Inherits="view_coordinator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="../bootstrap-3.3.7-dist/css/bootstrap.min.css" />
        <script src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <script src="../bootstrap-3.3.7-dist/js/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        
         
        <asp:GridView ID="GridView1" runat="server"     AutoGenerateColumns="False" BackColor="White" BorderColor="White"  CellPadding="16" CellSpacing="2" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" ToolTip="Coordinators List"  Caption="Coordinators List" Width="100%">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="From" HeaderText="From" SortExpression="From" />
                <asp:BoundField DataField="To" HeaderText="To" SortExpression="To" />
                <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Email_Id" HeaderText="Email_Id" SortExpression="Email_Id" />
                <asp:BoundField DataField="Hostel_Assigned" HeaderText="Hostel_Assigned" SortExpression="Hostel_Assigned" />
            </Columns>
            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" Height="3px" HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hostel permission systemConnectionString %>" SelectCommand="SELECT [ID], [Name], [From], [To], [Branch], [Gender], [Mobile], [Email Id] AS Email_Id, [Hostel Assigned] AS Hostel_Assigned FROM [Faculity_Reg] WHERE ([Role] = @Role) ORDER BY [Hostel Assigned], [Branch], [From]">
            <SelectParameters>
                <asp:Parameter DefaultValue="Coordinator" Name="Role" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
               
          
    </form>
</body>
</html>
