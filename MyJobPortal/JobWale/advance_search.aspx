<%@ Page Title="" Language="C#" MasterPageFile="~/jobseekermaster.master" AutoEventWireup="true" CodeFile="advance_search.aspx.cs" Inherits="advance_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            border: 1px solid #FFFF00;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2 style="text-align :center">Advance Search</h2>
<div>


    <table class="style1" cellpadding="5" cellspacing ="10">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Category"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Area"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Post"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Expected Salary"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="To"></asp:Label>
&nbsp;
                <asp:DropDownList ID="DropDownList5" runat="server">
                </asp:DropDownList>
&nbsp;
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Rs. Per Month"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Location"></asp:Label>
            </td>
            <td>
&nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Country"></asp:Label>
&nbsp;
                <asp:DropDownList ID="DropDownList6" runat="server">
                </asp:DropDownList>
&nbsp;
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="State"></asp:Label>
&nbsp;
                <asp:DropDownList ID="DropDownList7" runat="server">
                </asp:DropDownList>
&nbsp;
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="City"></asp:Label>
&nbsp;
                <asp:DropDownList ID="DropDownList8" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="left">
                <asp:Button ID="Button1" runat="server" BackColor="#00CC00" Font-Bold="True" 
                    ForeColor="#FF0066" Height="39px" Text="Search" Width="108px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>


    <br />

    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server">

    <Columns >
    
    <asp:CheckBoxField DataField ="ad_search" HeaderText ="Apply" SortExpression ="ad_search" />
    <asp:ButtonField ButtonType ="Button" CommandName="Update" HeaderText ="Save Job" ShowHeader ="true" Text ="Save" />
    
    </Columns>
    </asp:GridView>
    <div style="text-align :center"> 
        <asp:Button ID="Button2" runat="server" Text="Apply for selected Jobs" 
            Font-Bold="True" Font-Size="Larger" ForeColor="Blue" /></div>

</div>
</asp:Content>

