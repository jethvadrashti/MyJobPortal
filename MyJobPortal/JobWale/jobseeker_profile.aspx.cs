using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jobseeker_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["JName"] != null)
        {
            Label4.Text = Convert.ToString(Session["JName"]);
        }
    }
}