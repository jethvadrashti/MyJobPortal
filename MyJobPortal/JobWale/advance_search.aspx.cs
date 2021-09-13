using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class advance_search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Items.Insert(0, new ListItem("Select Category", "0"));
            DropDownList2.Items.Insert(0, new ListItem("Select Area", "0"));
            DropDownList3.Items.Insert(0, new ListItem("Select Post", "0"));
            DropDownList4.Items.Insert(0, new ListItem("minimum Salary", "0"));
            DropDownList5.Items.Insert(0, new ListItem("maximum salary", "0"));
            DropDownList6.Items.Insert(0, new ListItem("Select Country", "0"));
            DropDownList7.Items.Insert(0, new ListItem("Select State", "0"));
            DropDownList8.Items.Insert(0, new ListItem("Select City", "0"));
        }
    }
}