<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_selected_cands.aspx.cs" Inherits="admin_selected_cands" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Selected Candidates" Font-Underline="True"></asp:Label>
        </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 40px" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="selected_id" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="selected_id" HeaderText="selected_id" 
                    ReadOnly="True" SortExpression="selected_id" />
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" 
                    SortExpression="candidate_id" />
                <asp:BoundField DataField="jobpost_id" HeaderText="jobpost_id" 
                    SortExpression="jobpost_id" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jobwaleConnectionString %>" 
            DeleteCommand="DELETE FROM [Selected_candidates] WHERE [selected_id] = @selected_id" 
            InsertCommand="INSERT INTO [Selected_candidates] ([selected_id], [candidate_id], [jobpost_id]) VALUES (@selected_id, @candidate_id, @jobpost_id)" 
            SelectCommand="SELECT * FROM [Selected_candidates]" 
            UpdateCommand="UPDATE [Selected_candidates] SET [candidate_id] = @candidate_id, [jobpost_id] = @jobpost_id WHERE [selected_id] = @selected_id">
            <DeleteParameters>
                <asp:Parameter Name="selected_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="selected_id" Type="Int32" />
                <asp:Parameter Name="candidate_id" Type="Int32" />
                <asp:Parameter Name="jobpost_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="candidate_id" Type="Int32" />
                <asp:Parameter Name="jobpost_id" Type="Int32" />
                <asp:Parameter Name="selected_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

