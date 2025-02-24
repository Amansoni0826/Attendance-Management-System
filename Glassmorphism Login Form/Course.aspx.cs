﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Course : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridShow();
        }
    }

    private void GridShow()
    {
        SqlConnection con = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("select * from Course", con);

        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridShow();
    }


    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridShow();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int CourseId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        SqlConnection con1 = new SqlConnection(str);
        con1.Open();
        SqlCommand cmd1 = new SqlCommand("Delete from course where CID=@1", con1);

        cmd1.Parameters.AddWithValue("@1", CourseId);
        cmd1.ExecuteNonQuery();
        con1.Close();
        Label1.Text = "course Deleted Successful";
        Label1.ForeColor = System.Drawing.Color.DarkGreen;
        GridShow();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridShow();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        int cId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        string CourseName = (row.FindControl("TextBox2") as TextBox).Text;
        SqlConnection con2 = new SqlConnection(str);
        con2.Open();
        SqlCommand cmd1= new SqlCommand("Update course set CourseName=@1 where CID=@2", con2);
        cmd1.Parameters.AddWithValue("@1", CourseName);
        cmd1.Parameters.AddWithValue("@2", cId);
        cmd1.ExecuteNonQuery();
        con2.Close();
        Label1.Text = "Course Update Successful";
        Label1.ForeColor = System.Drawing.Color.DarkGreen;
        GridView1.EditIndex = -1;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("select * from course Where CourseName='" + TextBox1.Text.ToString() + "' ", con1);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            Label1.Text = "This Course is Already Present";
            Label1.ForeColor = System.Drawing.Color.Red; 
        }
        else
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("insert into course(CourseName) values('" + TextBox1.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Course added Successfully";
            Label1.ForeColor = System.Drawing.Color.DarkGreen;
            TextBox1.Text = "";
            GridShow();
        }
    }
}
