using System;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_3
{
    public partial class LoginException : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string username = txtUsername.Text.Trim();
                string password = txtPassword.Text.Trim();

                // Validate empty fields with custom exception
                if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
                {
                    throw new ArgumentException("Username and Password fields cannot be empty.");
                }

                // Check demo credentials
                if (username == "admin" && password == "admin123")
                {
                    lblResult.ForeColor = System.Drawing.Color.Green;
                    lblResult.Text = "Login successful! Welcome Admin.";
                }
                else
                {
                    lblResult.ForeColor = System.Drawing.Color.Red;
                    lblResult.Text = "Invalid username or password. Please try again.";
                }
            }
            catch (ArgumentException ex)
            {
                lblResult.ForeColor = System.Drawing.Color.OrangeRed;
                lblResult.Text = "Validation Error: " + ex.Message;
            }
            catch (Exception ex)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "An unexpected error occurred during login. Please contact support.";
            }
            finally
            {
                // Clear sensitive password field in finally block
                txtPassword.Text = "";
            }
        }
    }
}
