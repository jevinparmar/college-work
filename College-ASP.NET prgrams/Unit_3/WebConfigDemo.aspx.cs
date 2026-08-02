using System;
using System.Configuration;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_3
{
    public partial class WebConfigDemo : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Read AppSettings value
                string college = ConfigurationManager.AppSettings["CollegeName"];
                lblCollegeName.Text = string.IsNullOrEmpty(college) ? "Not Configured" : college;

                // Read ConnectionStrings value safely
                ConnectionStringSettings connSetting = ConfigurationManager.ConnectionStrings["MyConnection"];
                if (connSetting != null)
                {
                    lblProvider.Text = connSetting.ProviderName;
                    lblConnectionString.Text = connSetting.ConnectionString;
                }
                else
                {
                    lblProvider.Text = "N/A";
                    lblConnectionString.Text = "Connection string 'MyConnection' not found in Web.config";
                }
            }
        }
    }
}
