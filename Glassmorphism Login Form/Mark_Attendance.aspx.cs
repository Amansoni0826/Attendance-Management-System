using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mark_Attendance : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (!IsPostBack)
        {
            DrpCourse();
            DateTime now = DateTime.Now;
            Label4.Text = "Today's Date:" + now;
        }
    }

    private void DrpCourse()
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Course", con);
        DropDownList1.DataSource = cmd.ExecuteReader();
        DropDownList1.DataTextField = "CourseName";
        DropDownList1.DataValueField = "CID";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "Select Course");
        con.Close();
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        int CourseID = Convert.ToInt32(DropDownList1.SelectedValue);
        string Year = DropDownList2.SelectedItem.Text;
        String Sem = DropDownList5.SelectedItem.Text;
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Subject where CID='" + CourseID + "' and Year='" + Year + "' and Sem='" + Sem + "' ",con);
        DropDownList3.DataSource = cmd.ExecuteReader();
        DropDownList3.DataTextField = "SubjectName";
        DropDownList3.DataValueField = "SID";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, "Select Subject");
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Select Course" && DropDownList2.SelectedValue == "Select Year" && DropDownList5.SelectedValue == "Select Semester" && DropDownList3.SelectedValue == "Select Subject" && DropDownList4.SelectedValue == "Select")
        {
            Label1.Text = "Please Select all the fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if(DropDownList1.SelectedValue=="Select Course")
        {
            Label1.Text = "Please Select all the fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList4.SelectedValue == "Select")
        {
            Label1.Text = "Please Select all the fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList2.SelectedValue == "Select Year")
        {
            Label1.Text = "Please Select all the fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList3.SelectedValue == "Select Subject")
        {
            Label1.Text = "Please Select all the fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList5.SelectedValue == "Select Semester")
        {
            Label1.Text = "Please Select all the fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList1.SelectedValue == "Select Course" && DropDownList2.SelectedValue == "Select Year")
        {
            Label1.Text = "Please Select all the fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList1.SelectedValue == "Select Course" && DropDownList2.SelectedValue == "Select Semester")
        {
            Label1.Text = "Please Select all the fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList1.SelectedValue == "Select Course" && DropDownList2.SelectedValue == "Select Subject")
        {
            Label1.Text = "Please Select all the fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList1.SelectedValue == "Select Course" && DropDownList2.SelectedValue == "Select")
        {
            Label1.Text = "Please Select all the fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList2.SelectedValue == "Select Year" && DropDownList2.SelectedValue == "Select Semester")
        {
            Label1.Text = "Please Select all the fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList2.SelectedValue == "Select Year" && DropDownList2.SelectedValue == "Select Subject")
        {
            Label1.Text = "Please Select all the fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList2.SelectedValue == "Select Year" && DropDownList2.SelectedValue == "Select")
        {
            Label1.Text = "Please Select all the fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList3.SelectedValue == "Select Subject" && DropDownList2.SelectedValue == "Select Subject")
        {
            Label1.Text = "Please Select all the fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList3.SelectedValue == "Select Subject" && DropDownList2.SelectedValue == "Select")
        {
            Label1.Text = "Please Select all the fields";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select STID,Roll as RollNo,SName as StudentName from Student where Course='" + DropDownList1.SelectedItem.Text + "' and Year='" + DropDownList2.SelectedItem.Text + "' and Sem='" + DropDownList5.SelectedItem.Text + "'",con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "Student");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach(GridViewRow row in GridView1.Rows)
        {
            int Roll_No = Convert.ToInt32(row.Cells[2].Text);
            string Stud_Name = row.Cells[3].Text;
            int Stud_ID = Convert.ToInt32(row.Cells[1].Text);
            RadioButton rb1 = (row.Cells[0].FindControl("RadioButton1") as RadioButton);
            RadioButton rb2 = (row.Cells[0].FindControl("RadioButton2") as RadioButton);
            int status;
            if (rb1.Checked)
            {
                status = 1;
            }
            else
            {
                status = 0;
            }
            string Course = DropDownList1.SelectedItem.Text;
            string Year = DropDownList2.SelectedItem.Text;
            String Subject = DropDownList3.SelectedItem.Text;
            int Total_Lect = Int32.Parse(DropDownList4.SelectedItem.Text);

            int TLecture = (Total_Lect * status);
            string sem = DropDownList5.SelectedItem.Text;
            DateTime date = DateTime.Now;

            SqlConnection con = new SqlConnection(str);           
            SqlCommand cmd = new SqlCommand("insert into StudentAttendance(StudentName,Course,Year,Subject,Roll,Status,Date,Lecture,Sem) Values(@2,@3,@4,@5,@6,@7,@8,@9,@10)", con);
            con.Open();
            cmd.Parameters.AddWithValue("@2", Stud_Name);
            cmd.Parameters.AddWithValue("@3", Course);
            cmd.Parameters.AddWithValue("@4", Year);
            cmd.Parameters.AddWithValue("@5", Subject);
            cmd.Parameters.AddWithValue("@6", Roll_No);
            cmd.Parameters.AddWithValue("@7", status);
            cmd.Parameters.AddWithValue("@8", date);
            cmd.Parameters.AddWithValue("@9", TLecture);
            cmd.Parameters.AddWithValue("@10", sem);
            cmd.ExecuteNonQuery();
            con.Close();
            Label3.Text = "Attendance Saved Successfully";
            Label3.ForeColor = System.Drawing.Color.Green;
        }

        if (Session["TeacherID"] != null)
        {
            string Course = DropDownList1.SelectedItem.Text;
            string Year = DropDownList2.SelectedItem.Text;
            string Subject = DropDownList3.SelectedItem.Text;
            int Total_Lect = Int32.Parse(DropDownList4.SelectedItem.Text);
            string Sem = DropDownList5.SelectedItem.Text;
            DateTime date = DateTime.Now;

            SqlConnection con1 = new SqlConnection(str);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("insert into T_Lecture(TName,Date,LTaken,Course,Year,Subject,Sem) values(@2,@3,@4,@5,@6,@7,@8)", con1);
            cmd1.Parameters.AddWithValue("@2", Session["TeacherName"]);
            cmd1.Parameters.AddWithValue("@3", date);
            cmd1.Parameters.AddWithValue("@4", Total_Lect);
            cmd1.Parameters.AddWithValue("@5", Course);
            cmd1.Parameters.AddWithValue("@6", Year);
            cmd1.Parameters.AddWithValue("@7", Subject);
            cmd1.Parameters.AddWithValue("@8", Sem);
            cmd1.ExecuteNonQuery();
            con1.Close();
        }
    }
}