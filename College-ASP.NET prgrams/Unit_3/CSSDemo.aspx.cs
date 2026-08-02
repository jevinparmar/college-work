using System;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_3
{
    public partial class CSSDemo : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnExternal_Click(object sender, EventArgs e)
        {
            lblExternalMsg.Text = "Button clicked! External CSS successfully applied to ASP.NET Button control.";
        }
    }
}
