using System;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_3
{
    public partial class ThemeSelector : Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["SelectedTheme"] != null)
            {
                Page.Theme = Session["SelectedTheme"].ToString();
            }
            else
            {
                Page.Theme = "BlueTheme";
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["SelectedTheme"] != null)
                {
                    ddlTheme.SelectedValue = Session["SelectedTheme"].ToString();
                }
                lblStatus.Text = "Currently Active Theme: " + Page.Theme;
            }
        }

        protected void ddlTheme_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["SelectedTheme"] = ddlTheme.SelectedValue;
            Response.Redirect(Request.RawUrl);
        }
    }
}
