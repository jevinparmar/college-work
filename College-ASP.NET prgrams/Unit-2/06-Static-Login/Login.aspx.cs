using System;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_2
{
    public partial class StaticLogin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string userId = txtUserId.Text;
                string password = txtPassword.Text;

                if (userId == "admin" && password == "admin123")
                {
                    lblResult.Text = "Login successful.";
                    lblResult.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblResult.Text = "Invalid user ID or password.";
                    lblResult.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUserId.Text = "";
            txtPassword.Text = "";
            lblResult.Text = "";
        }
    }
}
