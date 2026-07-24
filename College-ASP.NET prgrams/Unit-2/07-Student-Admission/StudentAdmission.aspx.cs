using System;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_2
{
    public partial class StudentAdmission : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (!chkTerms.Checked)
                {
                    lblStatus.Text = "Please accept terms and conditions to proceed.";
                    lblStatus.ForeColor = System.Drawing.Color.Red;
                    pnlResult.Visible = false;
                    return;
                }

                lblStatus.Text = "Admission Form Submitted Successfully!";
                lblStatus.ForeColor = System.Drawing.Color.Green;

                valFullName.Text = Server.HtmlEncode(txtFullName.Text);
                valFatherName.Text = Server.HtmlEncode(txtFatherName.Text);
                valDob.Text = Server.HtmlEncode(txtDob.Text);
                valGender.Text = radMale.Checked ? "Male" : "Female";
                valEmail.Text = Server.HtmlEncode(txtEmail.Text);
                valMobile.Text = Server.HtmlEncode(txtMobile.Text);
                valAddress.Text = Server.HtmlEncode(txtAddress.Text);
                valLocation.Text = Server.HtmlEncode(txtCity.Text) + ", " + Server.HtmlEncode(txtState.Text) + " - " + Server.HtmlEncode(txtPincode.Text);
                valCourseSem.Text = Server.HtmlEncode(ddlCourse.SelectedValue) + " (Sem " + Server.HtmlEncode(ddlSemester.SelectedValue) + ")";
                valQualPercentage.Text = Server.HtmlEncode(txtQualification.Text) + " (" + Server.HtmlEncode(txtPercentage.Text) + "%)";
                valCategory.Text = Server.HtmlEncode(ddlCategory.SelectedValue);

                pnlResult.Visible = true;
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtFullName.Text = "";
            txtFatherName.Text = "";
            txtDob.Text = "";
            radMale.Checked = true;
            radFemale.Checked = false;
            txtEmail.Text = "";
            txtMobile.Text = "";
            txtAddress.Text = "";
            txtCity.Text = "";
            txtState.Text = "";
            txtPincode.Text = "";
            ddlCourse.SelectedIndex = 0;
            ddlSemester.SelectedIndex = 0;
            txtQualification.Text = "";
            txtPercentage.Text = "";
            ddlCategory.SelectedIndex = 0;
            chkTerms.Checked = false;
            lblStatus.Text = "";
            pnlResult.Visible = false;
        }
    }
}
