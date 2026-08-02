using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_4
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please enter both Email and Password.";
                return;
            }

            string connStr = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = "SELECT UserId, FullName FROM Users WHERE Email = @Email AND Password = @Password";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", password);

                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                Session["UserEmail"] = email;
                                Session["UserName"] = reader["FullName"].ToString();

                                lblMessage.ForeColor = System.Drawing.Color.Green;
                                lblMessage.Text = "Login Successful! Welcome, " + reader["FullName"].ToString() + ".";
                            }
                            else
                            {
                                lblMessage.ForeColor = System.Drawing.Color.Red;
                                lblMessage.Text = "Invalid Email or Password.";
                            }
                        }
                    }
                }
            }
            catch (SqlException)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Database connection error. Please verify database setup.";
            }
            catch (Exception)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "An error occurred during login authentication.";
            }
        }
    }
}
