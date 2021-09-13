<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobSReg3.aspx.cs" Inherits="JobSReg3" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="w3.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="w3-content" style="max-width:600px">


    <div class="w3-container w3-card-2 w3-indigo">
  <h1>Personal Details </h1> <p style="Text-align:center">
      <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
            Font-Size="Larger"></asp:Label></p>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            Security Question
        </div>
        <div class="col-md-3">
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            Answer
        </div>
        <div class="col-md-3">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <h3>First Name</h3>
        </div>
        <div class="col-md-3">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <h3>Middle Name</h3>
        </div>
        <div class="col-md-3">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <h3>Last Name</h3>
        </div>
        <div class="col-md-3">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <h3>Gender</h3>
        </div>
        <div class="col-md-3">
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <h3>D.O.B.</h3>
        </div>
        <div class="col-md-3">
          <asp:TextBox ID="TextBox5" runat="server" ontextchanged="TextBox5_TextChanged"></asp:TextBox>
          <cc1:calendarextender ID="TextBox5_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox5"></cc1:calendarextender>
          <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <h3>Country</h3>
        </div>
        <div class="col-md-3">
          <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <h3>State</h3>
        </div>
        <div class="col-md-3">
          <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <h3>City</h3>
        </div>
        <div class="col-md-3">
          <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <h3>Full Address</h3>
        </div>
        <div class="col-md-3">
          <asp:TextBox ID="TextBox6" runat="server" TextMode ="MultiLine"></asp:TextBox>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <h3>Contact No.</h3>
        </div>
        <div class="col-md-3">
          <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <h3>Email</h3>
        </div>
        <div class="col-md-3">
          <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <h3>Profile Date</h3>
        </div>
        <div class="col-md-3">
          <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-3">
          <asp:Button ID="Button1" runat="server" CssClass="form-control" Text="Next" Font-Bold="True" Font-Size="X-Large" ForeColor="#0033CC" Height="44px" onclick="Button1_Click" Width="101px" />
    </div>
</div>

<div class="w3-container w3-indigo w3-xlarge">
  <h5>Job Portal website (jobwale@2018)</h5>
</div>
    
    </div>
    </form>
</body>
</html>
