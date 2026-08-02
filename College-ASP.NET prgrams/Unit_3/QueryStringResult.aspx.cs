using System;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_3
{
    public partial class QueryStringResult : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["name"] != null)
                {
                    lblName.Text = Request.QueryString["name"];
                }
                else
                {
                    lblName.Text = "N/A";
                }

                if (Request.QueryString["course"] != null)
                {
                    lblCourse.Text = Request.QueryString["course"];
                }
                else
                {
                    lblCourse.Text = "N/A";
                }
            }
        }
    }
}
