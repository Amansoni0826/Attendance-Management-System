using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    private void GridShow()
    {
        SqlConnection con = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("select TName as Name,TUserId as EmailId from Teacher", con);
        con.Open();
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con2 = new SqlConnection(str);
        SqlDataAdapter sda1 = new SqlDataAdapter("select * from Teacher where TUserID='" + TextBox3.Text.ToString() + "' ",con2);
        DataTable dt = new DataTable();
        sda1.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            label1.Text = "Enteres EmailID is already existing";
            label1.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            string FName = TextBox2.Text;
            string LName = TextBox4.Text;
            string FullName = FName + LName;
            con2.Open();
            SqlCommand cmd = new SqlCommand("insert into Teacher(TName,TUserID,TPassword) values(@1,@2,@3)", con2);
            cmd.Parameters.AddWithValue("@1", FullName);
            cmd.Parameters.AddWithValue("@2", TextBox3.Text);
            cmd.Parameters.AddWithValue("@3", TextBox1.Text);
            cmd.ExecuteNonQuery();
            con2.Close();
            label1.Text = "Successfully Added";
            label1.ForeColor = System.Drawing.Color.Green;
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox1.Text = "";
            TextBox4.Text = "";
            GridShow();
        }
    }
}