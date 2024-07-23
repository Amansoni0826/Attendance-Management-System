using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TeacherSubject : System.Web.UI.Page
{
    String str = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownTeacherShow();
            DropDownCourseShow();
            ShowTeacherSubject();
        }
    }

    private void DropDownTeacherShow()
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Teacher", con);
        DropDownList1.DataSource = cmd.ExecuteReader();
        DropDownList1.DataTextField = "TName";
        DropDownList1.DataValueField = "TID";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "Select Teacher");
        con.Close();
    }

    private void DropDownCourseShow()
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Course", con);
        DropDownList2.DataSource = cmd.ExecuteReader();
        DropDownList2.DataTextField = "CourseName";
        DropDownList2.DataValueField = "CID";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, "Select Course");
        con.Close();
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (int.Parse(DropDownList3.SelectedValue) > 0)
        {
            DataTable statedt = new DataTable();
            statedt.Columns.Add("SemId", typeof(int));
            statedt.Columns.Add("SemName");

            if (DropDownList3.SelectedValue == "1")
            {
                statedt.Rows.Add(0, "Select Semester");
                statedt.Rows.Add(1, "1");
                statedt.Rows.Add(2, "2");
            }

            if (DropDownList3.SelectedValue == "2")
            {
                statedt.Rows.Add(0, "Select Semester");
                statedt.Rows.Add(3, "3");
                statedt.Rows.Add(4, "4");
            }

            if (DropDownList3.SelectedValue == "3")
            {
                statedt.Rows.Add(0, "Select Semester");
                statedt.Rows.Add(5, "5");
                statedt.Rows.Add(6, "6");
            }

            DropDownList4.DataSource = statedt;
            DropDownList4.DataTextField = "SemName";
            DropDownList4.DataValueField = "SemId";
            DropDownList4.DataBind();
            if (DropDownList3.SelectedValue == "0")
            {
                Label1.Text = "Please select proper Semester field";
            }
        }
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            int CourseId = Convert.ToInt32(DropDownList2.SelectedValue);
            string Year = DropDownList3.SelectedItem.Text;
            string Sem = DropDownList4.SelectedItem.Text;
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Subject where CID='" + CourseId + "' and Year='" + Year + "' and sem='" + Sem + "'", con);
            DropDownList5.DataSource = cmd.ExecuteReader();
            DropDownList5.DataTextField = "SubjectName";
            DropDownList5.DataValueField = "SID";
            DropDownList5.DataBind();
            DropDownList5.Items.Insert(0, "Select Subject");
            con.Open();
        }
        catch (Exception ex)
        {
            Label1.Text = "Before selecting Year you must select Teacher and Course field";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Select Teacher" && DropDownList2.SelectedValue == "Select Course" && DropDownList4.SelectedValue == "Select Semester" && DropDownList5.SelectedValue == "Select Subject")
        {
            Label1.Text = "Plz select All The Fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList1.SelectedValue == "Select Teacher")
        {
            Label1.Text = "Plz select All The Fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList2.SelectedValue == "Select Course")
        {
            Label1.Text = "Plz select All The Fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList5.SelectedValue == "Select Subject")
        {
            Label1.Text = "Plz select All The Fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            SqlConnection con1 = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("select * from TeacherSubject where Teacher='" + DropDownList1.SelectedItem.Text + "' and Course='" + DropDownList2.SelectedItem.Text + "' and Year='" + DropDownList3.SelectedItem.Text + "' and Sem='" + DropDownList4.SelectedItem.Text + "' and Subject='" + DropDownList5.SelectedItem.Text + "' ", con1);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Label1.Text = "selected Teacher is already assigned to the selected subject";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into TeacherSubject(Teacher,Course,Year,Sem,Subject) values(@1,@2,@3,@4,@5)", con);
                cmd.Parameters.AddWithValue("@1", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@2", DropDownList2.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@3", DropDownList3.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@4", DropDownList4.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@5", DropDownList5.SelectedItem.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                DropDownList1.SelectedValue = "Select Teacher";
                DropDownList2.SelectedValue = "Select Course";
                DropDownList5.SelectedValue = "Select Subject";
                Label1.Text = "Successfully Added";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
        }
    }

    private void ShowTeacherSubject()
    {
        SqlConnection con = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("Select Teacher,Course,Year,Sem as semester,Subject from TeacherSubject", con);
        con.Open();
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}