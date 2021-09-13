<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_category.aspx.cs" Inherits="admin_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<asp:Label ID="Label1" runat="server" Text="Add Category" Font-Bold="True" 
        ForeColor="#FF6600"></asp:Label>
<br />

<div>
    
    <br />
    <asp:Label ID="Label2" runat="server" Text="category"></asp:Label> 
    &nbsp; 
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />  <br />
    <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="True" 
        ForeColor="Blue" Height="29px" Width="69px" onclick="Button1_Click" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="category_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="category_id" HeaderText="category_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="category_id" />
            <asp:BoundField DataField="category_name" HeaderText="category_name" 
                SortExpression="category_name" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jobwaleConnectionString %>" 
        DeleteCommand="DELETE FROM [Category] WHERE [category_id] = @category_id" 
        InsertCommand="INSERT INTO [Category] ([category_name]) VALUES (@category_name)" 
        SelectCommand="SELECT * FROM [Category]" 
        UpdateCommand="UPDATE [Category] SET [category_name] = @category_name WHERE [category_id] = @category_id">
        <DeleteParameters>
            <asp:Parameter Name="category_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="category_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="category_name" Type="String" />
            <asp:Parameter Name="category_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>

<br />

<br />
<asp:Label ID="Label4" runat="server" Text="Add Area" Font-Bold="True" 
        Font-Italic="True" ForeColor="#FF6600"></asp:Label>
<div>
<asp:Label ID="Label5" runat="server" Text="category"></asp:Label> 
    &nbsp; 
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    <br />
    <br />

<asp:Label ID="Label3" runat="server" Text="Area"></asp:Label> 
    &nbsp; 
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />  <br />
    <asp:Button ID="Button2" runat="server" Text="Add" Font-Bold="True" 
        ForeColor="Blue" Height="28px" Width="117px" onclick="Button2_Click" />
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="area_id" DataSourceID="SqlDataSource2" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="area_id" HeaderText="area_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="area_id" />
            <asp:BoundField DataField="category_id" HeaderText="category_id" 
                SortExpression="category_id" />
            <asp:BoundField DataField="area_name" HeaderText="area_name" 
                SortExpression="area_name" />
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
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jobwaleConnectionString %>" 
        DeleteCommand="DELETE FROM [Area] WHERE [area_id] = @area_id" 
        InsertCommand="INSERT INTO [Area] ([category_id], [area_name]) VALUES (@category_id, @area_name)" 
        SelectCommand="SELECT * FROM [Area]" 
        UpdateCommand="UPDATE [Area] SET [category_id] = @category_id, [area_name] = @area_name WHERE [area_id] = @area_id">
        <DeleteParameters>
            <asp:Parameter Name="area_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="category_id" Type="Int32" />
            <asp:Parameter Name="area_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="category_id" Type="Int32" />
            <asp:Parameter Name="area_name" Type="String" />
            <asp:Parameter Name="area_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
<br />
<br />
<asp:Label ID="Label6" runat="server" Text="Add Post" Font-Bold="True" 
        Font-Italic="True" ForeColor="#FF6600"></asp:Label>
<div>

<br />
    <asp:Label ID="Label7" runat="server" Text="area"></asp:Label> 
    &nbsp;&nbsp; 
    <asp:DropDownList ID="DropDownList2" runat="server">
    </asp:DropDownList>
    <br />
    <br />

    <asp:Label ID="Label8" runat="server" Text="Post name"></asp:Label>&nbsp; <asp:TextBox ID="TextBox3"
        runat="server"></asp:TextBox>
        <br />
        <br />
    <asp:Button ID="Button3" runat="server" Text="Add" Height="22px" Width="83px" 
        onclick="Button3_Click" />
    <br />
    <br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="post_id" DataSourceID="SqlDataSource3" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="post_id" HeaderText="post_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="post_id" />
            <asp:BoundField DataField="area_id" HeaderText="area_id" 
                SortExpression="area_id" />
            <asp:BoundField DataField="post_name" HeaderText="post_name" 
                SortExpression="post_name" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jobwaleConnectionString %>" 
        DeleteCommand="DELETE FROM [Post] WHERE [post_id] = @post_id" 
        InsertCommand="INSERT INTO [Post] ([area_id], [post_name]) VALUES (@area_id, @post_name)" 
        SelectCommand="SELECT * FROM [Post]" 
        UpdateCommand="UPDATE [Post] SET [area_id] = @area_id, [post_name] = @post_name WHERE [post_id] = @post_id">
        <DeleteParameters>
            <asp:Parameter Name="post_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="area_id" Type="Int32" />
            <asp:Parameter Name="post_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="area_id" Type="Int32" />
            <asp:Parameter Name="post_name" Type="String" />
            <asp:Parameter Name="post_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
</center>
</asp:Content>

