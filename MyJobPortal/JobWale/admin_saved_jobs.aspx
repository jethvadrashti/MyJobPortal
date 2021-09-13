<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_saved_jobs.aspx.cs" Inherits="admin_saved_jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Saved Jobs" Font-Underline="True"></asp:Label>
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 42px" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="saved_job_id" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="saved_job_id" HeaderText="saved_job_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="saved_job_id" />
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" 
                    SortExpression="candidate_id" />
                <asp:BoundField DataField="jobpost_id" HeaderText="jobpost_id" 
                    SortExpression="jobpost_id" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        &nbsp;</p>
    <p>
        &nbsp; &nbsp;</p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jobwaleConnectionString %>" 
        DeleteCommand="DELETE FROM [Saved_jobs] WHERE [saved_job_id] = @saved_job_id" 
        InsertCommand="INSERT INTO [Saved_jobs] ([candidate_id], [jobpost_id]) VALUES (@candidate_id, @jobpost_id)" 
        SelectCommand="SELECT * FROM [Saved_jobs]" 
        UpdateCommand="UPDATE [Saved_jobs] SET [candidate_id] = @candidate_id, [jobpost_id] = @jobpost_id WHERE [saved_job_id] = @saved_job_id">
        <DeleteParameters>
            <asp:Parameter Name="saved_job_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="candidate_id" Type="Int32" />
            <asp:Parameter Name="jobpost_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="candidate_id" Type="Int32" />
            <asp:Parameter Name="jobpost_id" Type="Int32" />
            <asp:Parameter Name="saved_job_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

