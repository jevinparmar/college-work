using System;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_2
{
    public partial class Result : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["RollNo"] != null)
            {
                lblRollNo.Text = Server.HtmlEncode(Session["RollNo"].ToString());
                lblName.Text = Server.HtmlEncode(Session["Name"].ToString());
                lblCourse.Text = Server.HtmlEncode(Session["Course"].ToString());
                lblSemester.Text = Server.HtmlEncode(Session["Semester"].ToString());
                lblSub1.Text = Server.HtmlEncode(Session["Sub1"].ToString());
                lblSub2.Text = Server.HtmlEncode(Session["Sub2"].ToString());
                lblSub3.Text = Server.HtmlEncode(Session["Sub3"].ToString());
                lblSub4.Text = Server.HtmlEncode(Session["Sub4"].ToString());
                lblSub5.Text = Server.HtmlEncode(Session["Sub5"].ToString());
                lblTotal.Text = Server.HtmlEncode(Session["Total"].ToString());

                double pct = (double)Session["Percentage"];
                lblPercentage.Text = pct.ToString("0.00");
                lblGrade.Text = Server.HtmlEncode(Session["Grade"].ToString());

                string status = Session["Result"].ToString();
                lblResultStatus.Text = Server.HtmlEncode(status);
                if (status == "Pass")
                {
                    lblResultStatus.CssClass = "pass";
                }
                else
                {
                    lblResultStatus.CssClass = "fail";
                }
            }
            else
            {
                Response.Redirect("Marksheet.aspx");
            }
        }
    }
}
