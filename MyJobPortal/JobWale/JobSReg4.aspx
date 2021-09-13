<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobSReg4.aspx.cs" Inherits="JobSReg4" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="w3.css" rel="stylesheet" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div class="w3-content" style="max-width:600px">

    <div class="w3-container w3-card-2 w3-indigo">
    <h1>Educational Details</h1>
    </div>

   <ul class="w3-ul">
  <li>
    <h3>10<sup>th</sup> Class %</h3>
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
  </li>
  <li>
    <h3>12<sup>th</sup> Class %</h3>
      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
  </li>
  <li>
    <h3>Graduation</h3>
      <asp:DropDownList ID="DropDownList1" runat="server">
          <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">B.E.</asp:ListItem>
                                <asp:ListItem Value="2">B.com</asp:ListItem>
                                <asp:ListItem Value="3">B.Sc</asp:ListItem>
                                <asp:ListItem Value="4">B.B.A</asp:ListItem>
      </asp:DropDownList>
      
  </li>
   <li>
    <h3>Institute Name</h3>
       <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
      
  </li>
   <li>
    <h3>Percentage (%)</h3>
       <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
      
  </li>
   <li>
    <h3>Post Graduation</h3>
       <asp:DropDownList ID="DropDownList2" runat="server">
           <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">M.E</asp:ListItem>
                                <asp:ListItem Value="2">M.Com</asp:ListItem>
                                <asp:ListItem Value="3">M.C.A</asp:ListItem>
                                <asp:ListItem Value="4">M.B.A</asp:ListItem>
       </asp:DropDownList>
      
  </li>
   <li>
    <h3>Institute Name</h3>
       <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
      
  </li>
   <li>
    <h3>Percentage (%)</h3>
       <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
      
  </li>
  <li>
  <h3>Doctorate/PhD</h3>
      <asp:DropDownList ID="DropDownList3" runat="server">
         <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">Ph.D/Doctorate</asp:ListItem>
                                <asp:ListItem Value="2">MPHIL</asp:ListItem>
                                <asp:ListItem Value="3">Other</asp:ListItem>
      </asp:DropDownList>

  </li>
  <li>
  
  <h3>Institute Name</h3>
      <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>

  </li>
  <li>
  <h3>Percentage (%)</h3>
      <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>

  </li>
  <li>
  <h3>Certification Course</h3>
      <asp:TextBox ID="TextBox9" runat="server" TextMode ="MultiLine"></asp:TextBox>

  </li>
  
  <li>
      <asp:Button ID="Button1" runat="server" Text="NEXT" onclick="Button1_Click" 
          Font-Bold="True" Font-Size="Larger" ForeColor="Blue" />
  
  </li>
</ul>

  <div class="w3-container w3-indigo w3-xlarge">
   <h5>Job Portal (JobWale)</h5>
  </div>

    
  </div>
    </form>
</body>
</html>
