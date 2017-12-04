<%@ Page Title="" Language="C#" MasterPageFile="~/master/student.master" AutoEventWireup="true" CodeFile="Requests_Made.aspx.cs" Inherits="students_Requests_Made" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>STUDENT REQUESTS  PAGE</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="container">STUDENT PERMISSION REQUESTS AND  STATUS TABLE </h3>

    
    <div class="container">
    <table>
        <tr>

      
      <td>
    
    <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="10"  AllowPaging="True"  > 
             	<AlternatingRowStyle BackColor="White" /> 
           <columns>
   
               <asp:TemplateField HeaderText="Hostel Name">
                   <ItemTemplate>
                       <asp:Label ID="Label1" runat="server" Text='<%#Bind("Hostel_Name") %>'></asp:Label>
                   </ItemTemplate>
                 </asp:TemplateField>

                <asp:TemplateField HeaderText="Room No">
                   <ItemTemplate>
                       <asp:Label ID="arr" runat="server" Text='<%#Bind("Room_No") %>'></asp:Label>                       
                   </ItemTemplate>
               </asp:TemplateField>


               <asp:TemplateField HeaderText="Coordinator No">
                   <ItemTemplate>
                       <asp:Label ID="type" runat="server" Text='<%#Bind("Coordinator") %>'></asp:Label>      
                       </ItemTemplate>
               </asp:TemplateField>
               

                <asp:TemplateField HeaderText="Reason">
                   <ItemTemplate>
                       <asp:Label ID="sl" runat="server" Text='<%#Bind("Reason") %>'></asp:Label>                     
                 </ItemTemplate>
               </asp:TemplateField>
               
               <asp:TemplateField HeaderText="Leaving Date">
                   <ItemTemplate>
                       <asp:Label ID="type" runat="server" Text='<%#Bind("Leaving_date") %>'></asp:Label>                       
                       </ItemTemplate>
               </asp:TemplateField>
              
               <asp:TemplateField HeaderText="No of Days">
                   <ItemTemplate>
                       <asp:Label ID="type" runat="server" Text='<%#Bind("No_of_days") %>'></asp:Label>      
                       </ItemTemplate>
               </asp:TemplateField>

               <asp:TemplateField HeaderText="Mobile">
                   <ItemTemplate>
                       <asp:Label ID="from" runat="server" Text='<%#Bind("Mobile") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>

               
               <asp:TemplateField HeaderText="Parent Mobile">
                   <ItemTemplate>
                       <asp:Label ID="type" runat="server" Text='<%#Bind("Parent_mobile") %>'></asp:Label>      
                       </ItemTemplate>
               </asp:TemplateField>

             
               
               <asp:TemplateField HeaderText="Current Status">
                   <ItemTemplate>
                       <asp:Label ID="type" runat="server" Text='<%#Bind("Current_Status") %>'></asp:Label>      
                       </ItemTemplate>
               </asp:TemplateField>
           </columns>
       </asp:GridView>
          </td>

            <td>
     <asp:GridView ID="grid2" runat="server" CellPadding="45" AutoGenerateColumns="False" OnRowCommand="grid2_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="File">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Download" CommandArgument='<%# Eval("File") %>' Text='<%# Eval("File") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>       
        </td>

             </tr>
            </table>
        </div>
</asp:Content>

