<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobSReg6.aspx.cs" Inherits="JobSReg6" %>

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
    <h1>Upload Resume</h1>
    </div>

   <ul class="w3-ul">
  <li>
    <h3>Resume Headlines</h3>
      <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
  </li>
  <li>
    <h3>Upload resume</h3>
    Upload MS Word (doc/rtf) file only. Max size limit 300 Kb<br />
     
    <br />

    <asp:FileUpload ID="FileUpload1" runat="server" />
  </li>
  <li>
      <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
          Font-Size="Larger" ForeColor="Red"></asp:Label>
  </li>
   <li>
    <h3>Note:</h3>
    (If you do not have a resume right now, you may 
                            still create your account. Please remember to upload your resume as soon as 
                            possible)
  </li>
  
  
  
  
  
  <li>
      <asp:Button ID="Button1" runat="server" Text="Create My Profile" onclick="Button1_Click" 
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
