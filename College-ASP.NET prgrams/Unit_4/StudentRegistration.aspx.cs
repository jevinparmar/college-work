using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_4
{
    public partial class StudentRegistration : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblError.Text = "";
            pnlSuccess.Visible = false;

            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string mobile = txtMobile.Text.Trim();
            string gender = rblGender.SelectedValue;
            string dob = txtDOB.Text.Trim();
            string course = ddlCourse.SelectedValue;
            string address = txtAddress.Text.Trim();
            string city = txtCity.Text.Trim();

            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(mobile) || string.IsNullOrEmpty(dob) || string.IsNullOrEmpty(course))
            {
                lblError.Text = "Please fill in all mandatory fields.";
                return;
            }

            // Generate simple academic password: e.g. Pass@123
            string generatedPassword = "Pass@" + new Random().Next(100, 999).ToString();

            string connStr = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = @"INSERT INTO Students (StudentName, Email, Mobile, Gender, DateOfBirth, Course, Address, City, Password)
                                     VALUES (@StudentName, @Email, @Mobile, @Gender, @DateOfBirth, @Course, @Address, @City, @Password)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@StudentName", name);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Mobile", mobile);
                        cmd.Parameters.AddWithValue("@Gender", gender);
                        cmd.Parameters.AddWithValue("@DateOfBirth", DateTime.Parse(dob));
                        cmd.Parameters.AddWithValue("@Course", course);
                        cmd.Parameters.AddWithValue("@Address", address);
                        cmd.Parameters.AddWithValue("@City", city);
                        cmd.Parameters.AddWithValue("@Password", generatedPassword);

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                lblUserId.Text = email;
                lblPassword.Text = generatedPassword;
                pnlSuccess.Visible = true;
            }
            catch (SqlException ex)
            {
                if (ex.Number == 2627 || ex.Number == 2601)
                {
                    lblError.Text = "A student with this email address is already registered.";
                }
                else
                {
                    lblError.Text = "Database error during registration. Please try again.";
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "Error during registration: " + ex.Message;
            }
        }
    }
}
