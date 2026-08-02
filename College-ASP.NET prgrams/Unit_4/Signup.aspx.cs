using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_4
{
    public partial class Signup : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string fullName = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();
            string confirmPassword = txtConfirmPassword.Text.Trim();

            if (string.IsNullOrEmpty(fullName) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please fill in all required fields.";
                return;
            }

            if (password != confirmPassword)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Passwords do not match!";
                return;
            }

            string connStr = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = "INSERT INTO Users (FullName, Email, Password) VALUES (@FullName, @Email, @Password)";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@FullName", fullName);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", password);

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Registration successful! Redirecting to login...";
                Response.AddHeader("REFRESH", "2;URL=Login.aspx");
            }
            catch (SqlException ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                if (ex.Number == 2627 || ex.Number == 2601)
                {
                    lblMessage.Text = "An account with this email already exists.";
                }
                else
                {
                    lblMessage.Text = "Database error during signup. Please try again.";
                }
            }
            catch (Exception)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "An unexpected error occurred. Please try again.";
            }
        }
    }
}
