<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobSReg2.aspx.cs" Inherits="JobSReg2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="w3.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="w3-content" style="max-width:600px">

    <div class="w3-container w3-card-2 w3-indigo">
    <h1>Job Seeker Registraion</h1>
    </div>

   <ul class="w3-ul">
  <li>
    <h3>UserName</h3>
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
  </li>
  <li>
    <h3>Passwrod</h3>
      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
          ControlToValidate="TextBox2" ErrorMessage="error *" ForeColor="Red"></asp:RequiredFieldValidator>
  </li>
  <li>
    <h3>Confirm Passwrod</h3>
      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
          ControlToValidate="TextBox3" ErrorMessage="error *" ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:CompareValidator ID="CompareValidator1" runat="server" 
          ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
          ErrorMessage="Not match paswd" ForeColor="Red"></asp:CompareValidator>
  </li>
  
  <li>
      <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
  
  </li>
</ul>

  <div class="w3-container w3-indigo w3-xlarge">
   <h5>Job Portal (JobWale)</h5>
  </div>

    
  </div>
    </form>
</body>
</html>
