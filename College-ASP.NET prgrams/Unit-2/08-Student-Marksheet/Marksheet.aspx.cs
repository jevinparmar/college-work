using System;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_2
{
    public partial class Marksheet : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int s1, s2, s3, s4, s5;
                if (int.TryParse(txtSub1.Text, out s1) &&
                    int.TryParse(txtSub2.Text, out s2) &&
                    int.TryParse(txtSub3.Text, out s3) &&
                    int.TryParse(txtSub4.Text, out s4) &&
                    int.TryParse(txtSub5.Text, out s5))
                {
                    int total = s1 + s2 + s3 + s4 + s5;
                    double percentage = total / 5.0;

                    bool isPass = (s1 >= 35 && s2 >= 35 && s3 >= 35 && s4 >= 35 && s5 >= 35);
                    string grade = "F";

                    if (isPass)
                    {
                        if (percentage >= 80) grade = "A+";
                        else if (percentage >= 70) grade = "A";
                        else if (percentage >= 60) grade = "B";
                        else if (percentage >= 50) grade = "C";
                        else if (percentage >= 40) grade = "D";
                    }

                    Session["RollNo"] = txtRollNo.Text;
                    Session["Name"] = txtStudentName.Text;
                    Session["Course"] = txtCourse.Text;
                    Session["Semester"] = txtSemester.Text;
                    Session["Sub1"] = s1;
                    Session["Sub2"] = s2;
                    Session["Sub3"] = s3;
                    Session["Sub4"] = s4;
                    Session["Sub5"] = s5;
                    Session["Total"] = total;
                    Session["Percentage"] = percentage;
                    Session["Grade"] = grade;
                    Session["Result"] = isPass ? "Pass" : "Fail";

                    Response.Redirect("Result.aspx");
                }
                else
                {
                    lblError.Text = "Please enter valid marks.";
                }
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtRollNo.Text = "";
            txtStudentName.Text = "";
            txtCourse.Text = "";
            txtSemester.Text = "";
            txtEmail.Text = "";
            txtMobile.Text = "";
            txtSub1.Text = "";
            txtSub2.Text = "";
            txtSub3.Text = "";
            txtSub4.Text = "";
            txtSub5.Text = "";
            lblError.Text = "";
        }
    }
}
