using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_WebForms_Practicals.Unit_1
{
    public partial class ChangePassword : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void chkShowPassword_CheckedChanged(object sender, EventArgs e)
        {
            if (chkShowPassword.Checked)
            {
                txtCurrentPassword.TextMode = TextBoxMode.SingleLine;
                txtNewPassword.TextMode = TextBoxMode.SingleLine;
                txtConfirmPassword.TextMode = TextBoxMode.SingleLine;
            }
            else
            {
                txtCurrentPassword.TextMode = TextBoxMode.Password;
                txtNewPassword.TextMode = TextBoxMode.Password;
                txtConfirmPassword.TextMode = TextBoxMode.Password;
            }
        }
    }
}
