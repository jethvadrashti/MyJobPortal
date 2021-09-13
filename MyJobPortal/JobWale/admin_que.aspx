<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_que.aspx.cs" Inherits="admin_que" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center> 
<div>  
<br />
<br />
<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#E46115" Text="Sequrity Question" Font-Underline="True"></asp:Label>

            <br /><br />
            Question:  
    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="true" 
        Font-Size ="Larger" onclick="Button1_Click" />

    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="que_id" DataSourceID="SqlDataSource1" 
        GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="que_id" HeaderText="que_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="que_id" />
            <asp:BoundField DataField="question" HeaderText="question" 
                SortExpression="question" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jobwaleConnectionString %>" 
        DeleteCommand="DELETE FROM [Question] WHERE [que_id] = @que_id" 
        InsertCommand="INSERT INTO [Question] ([question]) VALUES (@question)" 
        SelectCommand="SELECT * FROM [Question]" 
        UpdateCommand="UPDATE [Question] SET [question] = @question WHERE [que_id] = @que_id">
        <DeleteParameters>
            <asp:Parameter Name="que_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="question" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="question" Type="String" />
            <asp:Parameter Name="que_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
     </div>
    </center>
</asp:Content>

