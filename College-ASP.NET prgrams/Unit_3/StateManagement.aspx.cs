using System;
using System.Web;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_3
{
    public partial class StateManagement : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // --- Cookie handlers ---
        protected void btnSetCookie_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtCookieInput.Text))
            {
                HttpCookie userCookie = new HttpCookie("UserName", txtCookieInput.Text);
                userCookie.Expires = DateTime.Now.AddMinutes(30);
                Response.Cookies.Add(userCookie);
                lblCookieResult.Text = "Cookie 'UserName' set to: " + txtCookieInput.Text;
            }
            else
            {
                lblCookieResult.Text = "Please enter a value to store in Cookie.";
            }
        }

        protected void btnGetCookie_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["UserName"] != null)
            {
                lblCookieResult.Text = "Cookie Value: " + Request.Cookies["UserName"].Value;
            }
            else
            {
                lblCookieResult.Text = "No Cookie found!";
            }
        }

        // --- Session handlers ---
        protected void btnSetSession_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtSessionInput.Text))
            {
                Session["UserSession"] = txtSessionInput.Text;
                lblSessionResult.Text = "Session 'UserSession' set to: " + txtSessionInput.Text;
            }
            else
            {
                lblSessionResult.Text = "Please enter a value to store in Session.";
            }
        }

        protected void btnGetSession_Click(object sender, EventArgs e)
        {
            if (Session["UserSession"] != null)
            {
                lblSessionResult.Text = "Session Value: " + Session["UserSession"].ToString();
            }
            else
            {
                lblSessionResult.Text = "No Session value found!";
            }
        }

        // --- Application handlers ---
        protected void btnSetApp_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtAppInput.Text))
            {
                Application.Lock();
                Application["CollegeAppValue"] = txtAppInput.Text;
                Application.UnLock();
                lblAppResult.Text = "Application state set to: " + txtAppInput.Text;
            }
            else
            {
                lblAppResult.Text = "Please enter a value to store in Application state.";
            }
        }

        protected void btnGetApp_Click(object sender, EventArgs e)
        {
            if (Application["CollegeAppValue"] != null)
            {
                lblAppResult.Text = "Application Value: " + Application["CollegeAppValue"].ToString();
            }
            else
            {
                lblAppResult.Text = "No Application value found!";
            }
        }
    }
}
