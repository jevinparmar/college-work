using System;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_3
{
    public partial class MarksheetException : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            lblError.Text = "";
            pnlResult.Visible = false;

            try
            {
                string name = txtName.Text.Trim();
                string roll = txtRollNo.Text.Trim();

                if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(roll))
                {
                    throw new ArgumentException("Student Name and Roll Number are required.");
                }

                if (string.IsNullOrEmpty(txtSub1.Text) || string.IsNullOrEmpty(txtSub2.Text) || string.IsNullOrEmpty(txtSub3.Text))
                {
                    throw new ArgumentException("Please enter marks for all three subjects.");
                }

                double s1, s2, s3;
                if (!double.TryParse(txtSub1.Text.Trim(), out s1) ||
                    !double.TryParse(txtSub2.Text.Trim(), out s2) ||
                    !double.TryParse(txtSub3.Text.Trim(), out s3))
                {
                    throw new FormatException("Marks must be numeric values.");
                }

                if (s1 < 0 || s1 > 100 || s2 < 0 || s2 > 100 || s3 < 0 || s3 > 100)
                {
                    throw new ArgumentOutOfRangeException("marks", "Marks for each subject must be between 0 and 100.");
                }

                double total = s1 + s2 + s3;
                double percentage = (total / 300.0) * 100.0;

                string status = (s1 >= 35 && s2 >= 35 && s3 >= 35) ? "PASS" : "FAIL";
                string grade = "F";

                if (status == "PASS")
                {
                    if (percentage >= 75) grade = "Distinction";
                    else if (percentage >= 60) grade = "First Class";
                    else if (percentage >= 50) grade = "Second Class";
                    else grade = "Pass Class";
                }

                lblResName.Text = name;
                lblResRoll.Text = roll;
                lblTotal.Text = total.ToString("0.##");
                lblPercentage.Text = percentage.ToString("0.##");
                lblStatus.Text = status;
                lblStatus.ForeColor = (status == "PASS") ? System.Drawing.Color.Green : System.Drawing.Color.Red;
                lblGrade.Text = grade;

                pnlResult.Visible = true;
            }
            catch (FormatException ex)
            {
                lblError.Text = "Input Error: " + ex.Message;
            }
            catch (ArgumentOutOfRangeException ex)
            {
                lblError.Text = "Validation Error: " + ex.Message;
            }
            catch (ArgumentException ex)
            {
                lblError.Text = "Required Field: " + ex.Message;
            }
            catch (Exception ex)
            {
                lblError.Text = "An unexpected error occurred during processing.";
            }
        }
    }
}
