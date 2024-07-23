using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student_Home.aspx");
    }

    protected void BtnAttendance_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student_Defaulter.aspx");
    }

    protected void BtnLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
}
