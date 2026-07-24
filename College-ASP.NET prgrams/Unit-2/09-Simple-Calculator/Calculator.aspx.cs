using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_WebForms_Practicals.Unit_2
{
    public partial class Calculator : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnOperation_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                decimal num1, num2;
                if (decimal.TryParse(txtFirstNum.Text, out num1) && decimal.TryParse(txtSecondNum.Text, out num2))
                {
                    Button btn = (Button)sender;
                    string op = btn.Text;
                    decimal result = 0;

                    if (op == "+")
                    {
                        result = num1 + num2;
                        lblResult.Text = "Result: " + result.ToString();
                        lblResult.ForeColor = System.Drawing.Color.Green;
                    }
                    else if (op == "-")
                    {
                        result = num1 - num2;
                        lblResult.Text = "Result: " + result.ToString();
                        lblResult.ForeColor = System.Drawing.Color.Green;
                    }
                    else if (op == "×")
                    {
                        result = num1 * num2;
                        lblResult.Text = "Result: " + result.ToString();
                        lblResult.ForeColor = System.Drawing.Color.Green;
                    }
                    else if (op == "÷")
                    {
                        if (num2 == 0)
                        {
                            lblResult.Text = "Error: Cannot divide by zero.";
                            lblResult.ForeColor = System.Drawing.Color.Red;
                        }
                        else
                        {
                            result = num1 / num2;
                            lblResult.Text = "Result: " + result.ToString("0.000");
                            lblResult.ForeColor = System.Drawing.Color.Green;
                        }
                    }
                }
                else
                {
                    lblResult.Text = "Invalid numbers entered.";
                    lblResult.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFirstNum.Text = "";
            txtSecondNum.Text = "";
            lblResult.Text = "";
        }
    }
}
