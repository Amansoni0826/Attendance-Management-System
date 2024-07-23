using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Defaulter : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["SiD"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            Text1.Attributes.Add("autocomplete", "off");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["SiD"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            string sid = Session["SiD"].ToString();
            DateTime dateTime = Convert.ToDateTime(Text1.Value);
            string datime = dateTime.ToString("yyyy,MM");
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("select Lecture from StudentAttendance where DATEPART(yy,Date)='" + dateTime.Year + "' and DATEPART(M,Date)='" + dateTime.Month + "' and STID='" + sid + "' ", con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "StudentAttendance");
            int r = 0;
            int total = 0;
            int itotal;
            int ftotal;
            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
                {
                    int days = Convert.ToInt32(((DataRow)ds.Tables[0].Rows[r])["Lecture"]);
                    itotal = days;
                    ftotal = (total + itotal);
                    total = ftotal;
                    r++;
                }
                SqlDataAdapter sda1 = new SqlDataAdapter("select Course,Year,Sem from Student where STID='" + sid + "' ", con);
                DataSet ds1 = new DataSet();
                sda1.Fill(ds1, "Student");
                string course = ds1.Tables[0].Rows[0][0].ToString();
                string year = ds1.Tables[0].Rows[0][1].ToString();
                string sem = ds1.Tables[0].Rows[0][2].ToString();

                SqlDataAdapter sda2 = new SqlDataAdapter("select LTaken from T_Lecture where Course='" + course + "' and Year='" + year + "' and Sem='" + sem + "' and DATEPART(yy,Date)='" + dateTime.Year + "' and DATEPART(M,Date)='" + dateTime.Month + "' ", con);
                DataSet ds2 = new DataSet();
                sda2.Fill(ds2, "T_Lecture");

                int r1 = 0;
                int total1 = 0;
                int itotal1, ftotal1;
                int x1, y1;
                float per;
                string totalTakenLecture, totalLectureAttended;

                if (ds2.Tables[0].Rows.Count > 0)
                {
                    for(int i = 0; i <= ds2.Tables[0].Rows.Count - 1; i++)
                    {
                        int days=Convert.ToInt32(((DataRow)ds2.Tables[0].Rows[r1])["LTaken"]);
                        itotal1 = days;
                        ftotal1 = (total1 + itotal1);
                        total1 = ftotal1;
                        r1++;
                    }
                    totalTakenLecture = total1.ToString();
                    totalLectureAttended = total1.ToString();

                    Label1.Text = "Total Lecture Attended:" + totalLectureAttended + "/" + totalTakenLecture;

                    x1 = Convert.ToInt32(totalTakenLecture);
                    y1 = Convert.ToInt32(totalLectureAttended);
                    per = ((y1 * 100) / x1);
                    Label2.Text = "Percentage:" + per + "%";
                    if (per < 40)
                    {
                        Label3.Text = "You are in Defaulter for this month(" + datime + ").";
                        Label3.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }
    }
}