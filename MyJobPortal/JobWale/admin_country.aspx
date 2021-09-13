<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_country.aspx.cs" Inherits="admin_country" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="margin-left :20px">

    <asp:Label ID="Label1" runat="server" Text="Add Country Details" 
        Font-Bold="True" Font-Size="Larger" ForeColor="#FF6600"></asp:Label>
    <br />
    <br />

    <div style="margin-left :20px">
      Country : 
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
        <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="True" 
            Font-Size="Medium" ForeColor="Blue" Height="28px" Width="83px" 
            onclick="Button1_Click" />
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataKeyNames="country_id" DataSourceID="SqlDataSource1" 
                GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="country_id" HeaderText="country_id" 
                        InsertVisible="False" ReadOnly="True" SortExpression="country_id" />
                    <asp:BoundField DataField="country_name" HeaderText="country_name" 
                        SortExpression="country_name" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:jobwaleConnectionString %>" 
                DeleteCommand="DELETE FROM [Country] WHERE [country_id] = @country_id" 
                InsertCommand="INSERT INTO [Country] ([country_name]) VALUES (@country_name)" 
                SelectCommand="SELECT * FROM [Country]" 
                UpdateCommand="UPDATE [Country] SET [country_name] = @country_name WHERE [country_id] = @country_id">
                <DeleteParameters>
                    <asp:Parameter Name="country_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="country_name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="country_name" Type="String" />
                    <asp:Parameter Name="country_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>

    </div>
    <br />
    <br />
     <asp:Label ID="Label2" runat="server" Text="Add State" 
        Font-Bold="True" Font-Size="Larger" ForeColor="#FF6600"></asp:Label>

        <br />
        <br />
        
     <div>
      
    Country:  
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    State: 
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <p> 
        <asp:Button ID="Button2" runat="server" Text="Add" Font-Size="Medium" 
            ForeColor="Blue" onclick="Button2_Click" /></p>
        <br />
         <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
             BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
             CellPadding="3" DataKeyNames="state_id" DataSourceID="SqlDataSource2" 
             GridLines="Horizontal">
             <AlternatingRowStyle BackColor="#F7F7F7" />
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:BoundField DataField="state_id" HeaderText="state_id" 
                     InsertVisible="False" ReadOnly="True" SortExpression="state_id" />
                 <asp:BoundField DataField="country_id" HeaderText="country_id" 
                     SortExpression="country_id" />
                 <asp:BoundField DataField="state_name" HeaderText="state_name" 
                     SortExpression="state_name" />
             </Columns>
             <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
             <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
             <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
             <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
             <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
             <SortedAscendingCellStyle BackColor="#F4F4FD" />
             <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
             <SortedDescendingCellStyle BackColor="#D8D8F0" />
             <SortedDescendingHeaderStyle BackColor="#3E3277" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
             ConnectionString="<%$ ConnectionStrings:jobwaleConnectionString %>" 
             DeleteCommand="DELETE FROM [State] WHERE [state_id] = @state_id" 
             InsertCommand="INSERT INTO [State] ([country_id], [state_name]) VALUES (@country_id, @state_name)" 
             SelectCommand="SELECT * FROM [State]" 
             UpdateCommand="UPDATE [State] SET [country_id] = @country_id, [state_name] = @state_name WHERE [state_id] = @state_id">
             <DeleteParameters>
                 <asp:Parameter Name="state_id" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="country_id" Type="Int32" />
                 <asp:Parameter Name="state_name" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="country_id" Type="Int32" />
                 <asp:Parameter Name="state_name" Type="String" />
                 <asp:Parameter Name="state_id" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
    </div>
    <br />
    <br />
     <div>
      <asp:Label ID="Label3" runat="server" Text="Add City" 
        Font-Bold="True" Font-Size="Larger" ForeColor="#FF6600"></asp:Label>
        <br />
        <br />
        State : 
         <asp:DropDownList ID="DropDownList2" runat="server">
         </asp:DropDownList>
         <br />
         <p>
         City : 
             <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
         </p>
         <br />
         <asp:Button ID="Button3" runat="server" Text="Add" onclick="Button3_Click" />
    <br />
         <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
             BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
             CellPadding="3" CellSpacing="2" DataKeyNames="city_id" 
             DataSourceID="SqlDataSource3">
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:BoundField DataField="city_id" HeaderText="city_id" InsertVisible="False" 
                     ReadOnly="True" SortExpression="city_id" />
                 <asp:BoundField DataField="state_id" HeaderText="state_id" 
                     SortExpression="state_id" />
                 <asp:BoundField DataField="city_name" HeaderText="city_name" 
                     SortExpression="city_name" />
             </Columns>
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

         <br />
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
             ConnectionString="<%$ ConnectionStrings:jobwaleConnectionString %>" 
             DeleteCommand="DELETE FROM [City] WHERE [city_id] = @city_id" 
             InsertCommand="INSERT INTO [City] ([state_id], [city_name]) VALUES (@state_id, @city_name)" 
             SelectCommand="SELECT * FROM [City]" 
             UpdateCommand="UPDATE [City] SET [state_id] = @state_id, [city_name] = @city_name WHERE [city_id] = @city_id">
             <DeleteParameters>
                 <asp:Parameter Name="city_id" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="state_id" Type="Int32" />
                 <asp:Parameter Name="city_name" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="state_id" Type="Int32" />
                 <asp:Parameter Name="city_name" Type="String" />
                 <asp:Parameter Name="city_id" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
    </div>
    </div>
</asp:Content>

