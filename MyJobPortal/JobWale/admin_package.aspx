<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_package.aspx.cs" Inherits="admin_package" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <center>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Add Package" Font-Underline="True"></asp:Label>
       <br />
       <br />

                    <asp:Label ID="Label20" runat="server" Font-Size="Small" ForeColor="Black"
                        Text="Cost"></asp:Label>
                
                    &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="97px"></asp:TextBox>
                    &nbsp;&nbsp; Rs.
                    <br />
                   <br />

                    <asp:Label ID="Label21" runat="server" Font-Size="Small" ForeColor="Black" 
                        Text="No. of Job-postings"></asp:Label>
                
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Width="62px"></asp:TextBox>
             <br />
              <br />    <br />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="Yellow" 
                        BorderColor="#FF3300" Text="Add" onclick="Button1_Click" 
                        Font-Size="Larger" ForeColor="Fuchsia" Height="39px" Width="105px" />
                   <br />

           <br />

   
   
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="package_id" 
            DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="package_id" HeaderText="package_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="package_id" />
                <asp:BoundField DataField="package_cost" HeaderText="package_cost" 
                    SortExpression="package_cost" />
                <asp:BoundField DataField="no_jobs" HeaderText="no_jobs" 
                    SortExpression="no_jobs" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=SUNITA\MSSQLSERVER01;Initial Catalog=jobwale;Integrated Security=True" 
            DeleteCommand="DELETE FROM [Package] WHERE [package_id] = @package_id" 
            InsertCommand="INSERT INTO [Package] ([package_cost], [no_jobs]) VALUES (@package_cost, @no_jobs)" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Package]" 
            UpdateCommand="UPDATE [Package] SET [package_cost] = @package_cost, [no_jobs] = @no_jobs WHERE [package_id] = @package_id">
            <DeleteParameters>
                <asp:Parameter Name="package_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="package_cost" Type="String" />
                <asp:Parameter Name="no_jobs" Type="Decimal" />
                <asp:Parameter Name="package_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="package_cost" Type="String" />
                <asp:Parameter Name="no_jobs" Type="Decimal" />
            </InsertParameters>
        </asp:SqlDataSource>
       
  </center>
</asp:Content>

