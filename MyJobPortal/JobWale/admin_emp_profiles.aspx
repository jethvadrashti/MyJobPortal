<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_emp_profiles.aspx.cs" Inherits="admin_emp_profiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Employes Profiles" Font-Underline="True"></asp:Label>
        </p>

        <p>
            <asp:GridView ID="GridView1" runat="server" style="margin-left: 35px" 
            AutoGenerateColumns="False" DataKeyNames="company_id" 
            DataSourceID="SqlDataSource1" Width="966px" CellPadding="4" 
                ForeColor="#333333" GridLines="None">
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle HorizontalAlign="Center" BackColor="#E3EAEB" />
                <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="company_id" HeaderText="company_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="company_id" />
                <asp:BoundField DataField="company_name" HeaderText="company_name" 
                    SortExpression="company_name" />
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" />
                <asp:BoundField DataField="que_id" HeaderText="que_id" 
                    SortExpression="que_id" />
                <asp:BoundField DataField="ansr" HeaderText="ansr" SortExpression="ansr" />
                <asp:BoundField DataField="contact_person" HeaderText="contact_person" 
                    SortExpression="contact_person" />
                <asp:BoundField DataField="company_contact" HeaderText="company_contact" 
                    SortExpression="company_contact" />
                <asp:BoundField DataField="company_addrs" HeaderText="company_addrs" 
                    SortExpression="company_addrs" />
                <asp:BoundField DataField="company_email" HeaderText="company_email" 
                    SortExpression="company_email" />
                <asp:BoundField DataField="company_details" HeaderText="company_details" 
                    SortExpression="company_details" />
            </Columns>
            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#7C6F57" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=  SUNITA\MSSQLSERVER01;Initial Catalog=jobwale;Integrated Security=True" 
            DeleteCommand="DELETE FROM [Company] WHERE [company_id] = @company_id" 
            InsertCommand="INSERT INTO [Company] ([company_name], [username], [que_id], [ansr], [contact_person], [company_contact], [company_addrs], [company_email], [company_details]) VALUES (@company_name, @username, @que_id, @ansr, @contact_person, @company_contact, @company_addrs, @company_email, @company_details)" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Company]" 
            UpdateCommand="UPDATE [Company] SET [company_name] = @company_name, [username] = @username, [que_id] = @que_id, [ansr] = @ansr, [contact_person] = @contact_person, [company_contact] = @company_contact, [company_addrs] = @company_addrs, [company_email] = @company_email, [company_details] = @company_details WHERE [company_id] = @company_id">
            <DeleteParameters>
                <asp:Parameter Name="company_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="company_name" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="que_id" Type="Int32" />
                <asp:Parameter Name="ansr" Type="String" />
                <asp:Parameter Name="contact_person" Type="String" />
                <asp:Parameter Name="company_contact" Type="Decimal" />
                <asp:Parameter Name="company_addrs" Type="String" />
                <asp:Parameter Name="company_email" Type="String" />
                <asp:Parameter Name="company_details" Type="String" />
                <asp:Parameter Name="company_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="company_name" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="que_id" Type="Int32" />
                <asp:Parameter Name="ansr" Type="String" />
                <asp:Parameter Name="contact_person" Type="String" />
                <asp:Parameter Name="company_contact" Type="Decimal" />
                <asp:Parameter Name="company_addrs" Type="String" />
                <asp:Parameter Name="company_email" Type="String" />
                <asp:Parameter Name="company_details" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        
        </p>


</asp:Content>

