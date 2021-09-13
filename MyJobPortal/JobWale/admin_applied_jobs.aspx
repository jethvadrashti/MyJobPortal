<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_applied_jobs.aspx.cs" Inherits="admin_applied_jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Applied Jobs" Font-Underline="True"></asp:Label>
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 42px" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="applied_id" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="applied_id" HeaderText="applied_id" ReadOnly="True" 
                    SortExpression="applied_id" />
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" 
                    SortExpression="candidate_id" />
                <asp:BoundField DataField="jobpost_id" HeaderText="jobpost_id" 
                    SortExpression="jobpost_id" />
                <asp:BoundField DataField="applied_date" HeaderText="applied_date" 
                    SortExpression="applied_date" />
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
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jobwaleConnectionString %>" 
            DeleteCommand="DELETE FROM [jobapplied] WHERE [applied_id] = @applied_id" 
            InsertCommand="INSERT INTO [jobapplied] ([applied_id], [candidate_id], [jobpost_id], [applied_date]) VALUES (@applied_id, @candidate_id, @jobpost_id, @applied_date)" 
            SelectCommand="SELECT * FROM [jobapplied]" 
            UpdateCommand="UPDATE [jobapplied] SET [candidate_id] = @candidate_id, [jobpost_id] = @jobpost_id, [applied_date] = @applied_date WHERE [applied_id] = @applied_id">
            <DeleteParameters>
                <asp:Parameter Name="applied_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="applied_id" Type="Int32" />
                <asp:Parameter Name="candidate_id" Type="Int32" />
                <asp:Parameter Name="jobpost_id" Type="Int32" />
                <asp:Parameter Name="applied_date" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="candidate_id" Type="Int32" />
                <asp:Parameter Name="jobpost_id" Type="Int32" />
                <asp:Parameter Name="applied_date" Type="DateTime" />
                <asp:Parameter Name="applied_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

