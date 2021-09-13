<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="jobseeker_login.aspx.cs" Inherits="jobseeker_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div class="w3-half">        
  <p><strong> JobSeeker Login Form</strong></p>

  <div class="w3-form w3-card-4">
  
  <h2>Login Form</h2>
 
  <div class="w3-group">      
    <label>UserName</label>
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
      
  </div>
  <div class="w3-group">      
    <label>Password</label>
    
      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
  </div>


  <div class="w3-group">      
      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
  </div>
      <asp:Button ID="Button1" runat="server" class="w3-btn w3-teal" Text="Login"  onclick="Button1_Click" />
  
  



  
  
  &nbsp;
      <asp:HyperLink ID="HyperLink1" runat="server">Forgot password ?</asp:HyperLink>
  
  



  
  
  </div>
  <div class="w3-group"> 
   <label>New User!</label>
      <asp:HyperLink ID="HyperLink2" runat="server" 
          NavigateUrl ="~/recruiter_regi.aspx" Font-Bold="True" ForeColor="#009933">Registration</asp:HyperLink>

  </div>
   

  </div>

</asp:Content>

