<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view wardens.aspx.cs" Inherits="view_wardens" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" Caption="Wardens List" CaptionAlign="Left" CellPadding="14" DataKeyNames="ID" DataSourceID="Waardens_List" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Email_Id" HeaderText="Email_Id" SortExpression="Email_Id" />
                    <asp:BoundField DataField="Hostel_Assigned" HeaderText="Hostel_Assigned" SortExpression="Hostel_Assigned" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="Waardens_List" runat="server" ConnectionString="<%$ ConnectionStrings:hostel permission systemConnectionString %>" SelectCommand="SELECT [Name], [ID], [Email Id] AS Email_Id, [Hostel Assigned] AS Hostel_Assigned, [Gender], [Mobile] FROM [Faculity_Reg] ORDER BY [Hostel Assigned], [Name]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
