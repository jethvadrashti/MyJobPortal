using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["js"] != null)
        {
            Response.Redirect("~/jobseeker_login.aspx");
        }
        else
        {
            Label1.Text = Convert.ToString(Session["js"]);

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("JobSReg3.aspx");
    }
}