using System;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_3
{
    public partial class ThemeSkinDemo : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtName.Text))
            {
                lblOutput.Text = "Hello " + txtName.Text + "! BlueTheme and Skin files have been applied successfully.";
            }
            else
            {
                lblOutput.Text = "Please enter your name.";
            }
        }
    }
}
