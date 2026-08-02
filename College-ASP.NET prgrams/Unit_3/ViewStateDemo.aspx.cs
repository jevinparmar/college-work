using System;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_3
{
    public partial class ViewStateDemo : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["ClickCount"] = 0;
                lblViewStateValue.Text = "Current ViewState Counter: 0";
            }
        }

        protected void btnIncrement_Click(object sender, EventArgs e)
        {
            int count = 0;
            if (ViewState["ClickCount"] != null)
            {
                count = (int)ViewState["ClickCount"];
            }
            count++;
            ViewState["ClickCount"] = count;
            lblViewStateValue.Text = "Current ViewState Counter: " + count;
        }

        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            string name = Server.UrlEncode(txtName.Text.Trim());
            string course = Server.UrlEncode(txtCourse.Text.Trim());
            Response.Redirect("QueryStringResult.aspx?name=" + name + "&course=" + course);
        }
    }
}
