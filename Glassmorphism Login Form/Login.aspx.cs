using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("select * from Teacher where TUserID='" + txtId.Text + "' and TPassword= '" + txtPassword.Text + "'", con);
        SqlDataAdapter sda1 = new SqlDataAdapter("select * from Student where Email='" + txtId.Text + "' and Password= '" + txtPassword.Text + "'", con);
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        sda.Fill(dt);
        sda1.Fill(dt1);

        if (txtId.Text == "Admin" & txtPassword.Text == "123")
        {
            Response.Redirect("Admin_Home.aspx");
        }
        else if (dt.Rows.Count == 1)
        {
            Session["TeacherID"] = dt.Rows[0][0].ToString();
            Session["TeacherName"] = dt.Rows[0][1].ToString();
            Session["TUserID"] = txtId.Text;
            Response.Redirect("Teacher_Home.aspx");
        }
        else if (dt1.Rows.Count == 1)
        {
            Session["StudentEmail"] = txtId.Text;
            int sid = Convert.ToInt32(dt1.Rows[0][0]);
            Session["SiD"] = sid;
            Response.Redirect("Student_Home.aspx");
        }
        else
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Login Failed!";
        } 
    }
}