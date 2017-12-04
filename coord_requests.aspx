<%@ Page Title="" Language="C#" MasterPageFile="~/master/coordinator.master" AutoEventWireup="true" CodeFile="coord_requests.aspx.cs" Inherits="Co_ordinators_coord_requests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    
    
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Coordinator Request Page

    <br />
    
   <%-- %> <div class="grid1" style="float:left">
    <asp:GridView ID="GridView1"  runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
        </div>--%>

    <div class="grid2">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Reg_Number" HeaderStyle-Font-Bold="true"
             OnRowUpdating="GridView2_RowUpdating" >
            <Columns>
                <asp:TemplateField  HeaderText="Reg_Number">
                    <ItemTemplate>
                        <asp:Label ID="regno" runat="server" Text='<%#Bind("Reg_Number")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Names" >
                    <ItemTemplate>
                        <asp:Label ID="name" runat="server" Text='<%#Bind("Names") %>'></asp:Label>

                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hostel ID">
                   <ItemTemplate>
                       <asp:Label ID="hos_id" runat="server" Text='<%#Bind("Hostel_ID" )%>'></asp:Label>
                   </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Room Nos">
                    <ItemTemplate>
                      <asp:Label ID="room" runat="server" Text='<%#Bind("Room_No") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Reason">
                    <ItemTemplate>
                        <asp:Label ID="reason" runat="server" Text='<%#Bind("Reason") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
  
                <asp:TemplateField HeaderText="Date of Leaving">
                    <ItemTemplate>
                        <asp:Label ID="d_leave" runat="server" Text='<%#Bind("Leaving_date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="No Of Days">
                    <ItemTemplate>
                        <asp:Label ID="days" runat="server" Text='<%#Bind("No_of_days") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="Parent Mobile">
                    <ItemTemplate>
                        <asp:Label ID="parent" runat="server" Text='<%#Bind("Parent_mobile") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Warden ID">
                    <ItemTemplate>
                        <asp:Label ID="warden" runat="server" Text='<%#Bind("Warden") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                 <asp:TemplateField HeaderText="Current Status">
                    <ItemTemplate>
                        <asp:Label ID="c_status" runat="server" Text='<%#Bind("Current_Status") %>'></asp:Label>
                        <asp:Label ID="change_decline" runat="server" Text="Coordinator Decline" Visible="false"></asp:Label>
                        <asp:Label ID="change_approve" runat="server" Text="Coordinator Approved" Font-Bold="true" ForeColor="Green" Visible="false"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Decision">
                    <ItemTemplate>
                        <asp:Button ID="btnapprove" runat="server" CssClass="btn-success"  CommandName="Update" Text="Approve" />
                        <asp:Button ID="btndecline" runat="server" CssClass="btn-danger" CommandName="Update" Text="Decline"   />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

    <br />
    <br />
   <%---- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Reg_Number,Leaving_date" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Reg_Number" HeaderText="Reg_Number" ReadOnly="True" SortExpression="Reg_Number" />
            <asp:BoundField DataField="Names" HeaderText="Names" SortExpression="Names" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            <asp:BoundField DataField="Hostel_ID" HeaderText="Hostel_ID" SortExpression="Hostel_ID" />
            <asp:BoundField DataField="Hostel_Name" HeaderText="Hostel_Name" SortExpression="Hostel_Name" />
            <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
            <asp:BoundField DataField="Room_No" HeaderText="Room_No" SortExpression="Room_No" />
            <asp:BoundField DataField="Coordinator" HeaderText="Coordinator" SortExpression="Coordinator" />
            <asp:BoundField DataField="Reason" HeaderText="Reason" SortExpression="Reason" />
            <asp:BoundField DataField="Current_Status" HeaderText="Current_Status" SortExpression="Current_Status" />
            <asp:BoundField DataField="Parent_mobile" HeaderText="Parent_mobile" SortExpression="Parent_mobile" />
            <asp:BoundField DataField="No_of_days" HeaderText="No_of_days" SortExpression="No_of_days" />
            <asp:BoundField DataField="Leaving_date" HeaderText="Leaving_date" ReadOnly="True" SortExpression="Leaving_date" />
            <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Decision" ShowHeader="True" Text="Approve" />
            <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Dis Approve" ShowHeader="True" Text="Decline" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hostel permission systemConnectionString %>" 
       DeleteCommand="DELETE FROM [Stud_Requests] WHERE [Reg_Number] = @Reg_Number AND [Leaving_date] = @Leaving_date" 
       InsertCommand="INSERT INTO [Stud_Requests] ([Reg_Number], [Names], [Mobile], [Hostel_ID], [Hostel_Name], [Branch], [Room_No], [Coordinator], [Reason], [Current_Status], [Parent_mobile], [No_of_days], [Leaving_date]) VALUES (@Reg_Number, @Names, @Mobile, @Hostel_ID, @Hostel_Name, @Branch, @Room_No, @Coordinator, @Reason, @Current_Status, @Parent_mobile, @No_of_days, @Leaving_date)" 
        SelectCommand="SELECT [Reg_Number], [Names], [Mobile], [Hostel_ID], [Hostel_Name], [Branch], [Room_No], [Coordinator], [Reason], [Current_Status], [Parent_mobile], [No_of_days], [Leaving_date] FROM [Stud_Requests] WHERE ([Coordinator] = @Coordinator) ORDER BY [Leaving_date], [Room_No], [No_of_days]" 
        UpdateCommand="UPDATE [Stud_Requests] SET [Current_Status] = ' Coordinator Approved'  WHERE [Reg_Number] = @Reg_Number AND [Leaving_date] = @Leaving_date">
        <DeleteParameters>
            <asp:Parameter Name="Reg_Number" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Leaving_date" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Reg_Number" Type="Decimal" />
            <asp:Parameter Name="Names" Type="String" />
            <asp:Parameter Name="Mobile" Type="Decimal" />
            <asp:Parameter Name="Hostel_ID" Type="Decimal" />
            <asp:Parameter Name="Hostel_Name" Type="String" />
            <asp:Parameter Name="Branch" Type="String" />
            <asp:Parameter Name="Room_No" Type="String" />
            <asp:Parameter Name="Coordinator" Type="String" />
            <asp:Parameter Name="Reason" Type="String" />
            <asp:Parameter Name="Current_Status" Type="String" />
            <asp:Parameter Name="Parent_mobile" Type="Decimal" />
            <asp:Parameter Name="No_of_days" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Leaving_date" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Coordinator" SessionField="id" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Names" Type="String" />
            <asp:Parameter Name="Mobile" Type="Decimal" />
            <asp:Parameter Name="Hostel_ID" Type="Decimal" />
            <asp:Parameter Name="Hostel_Name" Type="String" />
            <asp:Parameter Name="Branch" Type="String" />
            <asp:Parameter Name="Room_No" Type="String" />
            <asp:Parameter Name="Coordinator" Type="String" />
            <asp:Parameter Name="Reason" Type="String" />
            <asp:Parameter Name="Current_Status" Type="String" />
            <asp:Parameter Name="Parent_mobile" Type="Decimal" />
            <asp:Parameter Name="No_of_days" Type="Decimal" />
            <asp:Parameter Name="Reg_Number" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Leaving_date" />
        </UpdateParameters>
    </asp:SqlDataSource>---%>
       
    

</asp:Content>

