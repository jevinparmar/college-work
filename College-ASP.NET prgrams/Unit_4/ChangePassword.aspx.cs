using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_4
{
    public partial class ChangePassword : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Session["UserEmail"] != null)
            {
                txtEmail.Text = Session["UserEmail"].ToString();
            }
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string currentPassword = txtCurrentPassword.Text.Trim();
            string newPassword = txtNewPassword.Text.Trim();
            string confirmNewPassword = txtConfirmNewPassword.Text.Trim();

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(currentPassword) || string.IsNullOrEmpty(newPassword))
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please fill in all fields.";
                return;
            }

            if (newPassword != confirmNewPassword)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "New Password and Confirm New Password do not match!";
                return;
            }

            string connStr = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    con.Open();

                    // Step 1: Verify current credentials
                    string verifyQuery = "SELECT COUNT(*) FROM Users WHERE Email = @Email AND Password = @CurrentPassword";
                    using (SqlCommand verifyCmd = new SqlCommand(verifyQuery, con))
                    {
                        verifyCmd.Parameters.AddWithValue("@Email", email);
                        verifyCmd.Parameters.AddWithValue("@CurrentPassword", currentPassword);

                        int count = (int)verifyCmd.ExecuteScalar();
                        if (count == 0)
                        {
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            lblMessage.Text = "Current User ID or Password is incorrect.";
                            return;
                        }
                    }

                    // Step 2: Update password
                    string updateQuery = "UPDATE Users SET Password = @NewPassword WHERE Email = @Email";
                    using (SqlCommand updateCmd = new SqlCommand(updateQuery, con))
                    {
                        updateCmd.Parameters.AddWithValue("@NewPassword", newPassword);
                        updateCmd.Parameters.AddWithValue("@Email", email);

                        updateCmd.ExecuteNonQuery();
                    }
                }

                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Password changed successfully.";
            }
            catch (SqlException)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Database connection error. Please try again.";
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "An error occurred: " + ex.Message;
            }
        }
    }
}
