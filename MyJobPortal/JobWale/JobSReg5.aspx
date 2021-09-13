<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobSReg5.aspx.cs" Inherits="JobSReg5" %>

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
    <h1>Professional Details</h1>
    </div>

   <ul class="w3-ul">
  <li>
    <h3>Category</h3>
      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
          onselectedindexchanged="DropDownList1_SelectedIndexChanged">
      </asp:DropDownList>
  </li>
  <li>
    <h3>Area</h3>
      <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
      </asp:DropDownList>

  </li>
  <li>
    <h3>Company</h3>
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
  </li>
   <li>
    <h3>Role</h3>
       <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
  </li>
   <li>
    <h3>Experience</h3>
       <asp:DropDownList ID="DropDownList3" runat="server">
           <asp:ListItem Value ="0">0</asp:ListItem>
           <asp:ListItem>1</asp:ListItem>
           <asp:ListItem>2</asp:ListItem>
           <asp:ListItem>3</asp:ListItem>
           <asp:ListItem>4</asp:ListItem>
           <asp:ListItem>5</asp:ListItem>
           <asp:ListItem>6</asp:ListItem>
           <asp:ListItem>7</asp:ListItem>
           <asp:ListItem>8</asp:ListItem>
           <asp:ListItem>9</asp:ListItem>
           <asp:ListItem>10</asp:ListItem>
       </asp:DropDownList> Years and 
       <asp:DropDownList ID="DropDownList4" runat="server">
           <asp:ListItem>0</asp:ListItem>
           <asp:ListItem>4</asp:ListItem>
           <asp:ListItem>6</asp:ListItem>
           <asp:ListItem>8</asp:ListItem>
           <asp:ListItem>10</asp:ListItem>
       </asp:DropDownList> Months
      
  </li>
   <li>
    <h3>Annual Salary</h3>
       <asp:DropDownList ID="DropDownList5" runat="server">
           <asp:ListItem>0</asp:ListItem>
           <asp:ListItem>1</asp:ListItem>
           <asp:ListItem>2</asp:ListItem>
           <asp:ListItem>3</asp:ListItem>
           <asp:ListItem>4</asp:ListItem>
           <asp:ListItem>5</asp:ListItem>
           <asp:ListItem>6</asp:ListItem>
           <asp:ListItem>7</asp:ListItem>
           <asp:ListItem>8</asp:ListItem>
           <asp:ListItem>9</asp:ListItem>
           <asp:ListItem>10</asp:ListItem>
       </asp:DropDownList>&nbsp;Lacs&nbsp; <asp:DropDownList ID="DropDownList6" runat="server">
           <asp:ListItem>0</asp:ListItem>
           <asp:ListItem>10</asp:ListItem>
           <asp:ListItem>20</asp:ListItem>
           <asp:ListItem>30</asp:ListItem>
           <asp:ListItem>40</asp:ListItem>
           <asp:ListItem>50</asp:ListItem>
           <asp:ListItem>60</asp:ListItem>
           <asp:ListItem>70</asp:ListItem>
           <asp:ListItem>80</asp:ListItem>
           <asp:ListItem>90</asp:ListItem>
       </asp:DropDownList>&nbsp;Thousands&nbsp; <asp:RadioButton ID="RadioButton1" 
           runat="server" ForeColor="#CC00FF" GroupName="2" Checked ="true"  Text="Rupees" />
       <asp:RadioButton ID="RadioButton2" runat="server" ForeColor="#FF6600"  GroupName="2" Text="US Dollars" />
  </li>
   <li>
    <h3>Skills</h3>
       <asp:TextBox ID="TextBox3" runat="server" TextMode ="MultiLine"></asp:TextBox>
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
