<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_jobs.aspx.cs" Inherits="admin_jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <p>
        &nbsp;</p>
    <asp:Panel ID="Panel1" runat="server" Height="391px" style="margin-left: 40px" 
        Width="220px">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/admin_posted_jobs.aspx" Font-Bold="True" 
            ForeColor="#FF6600">Posted Jobs</asp:HyperLink>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/admin_applied_jobs.aspx" Font-Bold ="true" ForeColor ="#FF6600">Applied Jobs</asp:HyperLink>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/AdminPanel/admin_saved_jobs.aspx" Font-Bold ="true" ForeColor ="#FF6600">Saved Jobs</asp:HyperLink>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" 
            NavigateUrl="~/admin_selected_cands.aspx" Font-Bold ="true" ForeColor ="#FF6600">Selected Candidates</asp:HyperLink>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink5" runat="server" 
            NavigateUrl="~/admin_saved_cands.aspx" Font-Bold ="true" ForeColor ="#FF6600">Saved Candidates</asp:HyperLink>
    </asp:Panel>
    <p>
    </p>

</asp:Content>

