using System;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_3
{
    public partial class CalculatorException : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            PerformOperation((a, b) => a + b, "+");
        }

        protected void btnSubtract_Click(object sender, EventArgs e)
        {
            PerformOperation((a, b) => a - b, "-");
        }

        protected void btnMultiply_Click(object sender, EventArgs e)
        {
            PerformOperation((a, b) => a * b, "*");
        }

        protected void btnDivide_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txtNum1.Text) || string.IsNullOrEmpty(txtNum2.Text))
                {
                    throw new FormatException("Please enter values in both number fields.");
                }

                double n1 = Convert.ToDouble(txtNum1.Text.Trim());
                double n2 = Convert.ToDouble(txtNum2.Text.Trim());

                if (n2 == 0)
                {
                    throw new DivideByZeroException("Cannot divide by zero!");
                }

                double result = n1 / n2;
                lblResult.ForeColor = System.Drawing.Color.DarkGreen;
                lblResult.Text = "Result: " + n1 + " / " + n2 + " = " + result.ToString("0.####");
            }
            catch (FormatException)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Format Error: Please enter valid numeric numbers.";
            }
            catch (DivideByZeroException ex)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Math Error: " + ex.Message;
            }
            catch (OverflowException)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Overflow Error: Number value is too large or small.";
            }
            catch (Exception ex)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Error: " + ex.Message;
            }
        }

        private void PerformOperation(Func<double, double, double> op, string opSymbol)
        {
            try
            {
                if (string.IsNullOrEmpty(txtNum1.Text) || string.IsNullOrEmpty(txtNum2.Text))
                {
                    throw new FormatException("Please enter values in both number fields.");
                }

                double n1 = Convert.ToDouble(txtNum1.Text.Trim());
                double n2 = Convert.ToDouble(txtNum2.Text.Trim());

                double result = op(n1, n2);
                lblResult.ForeColor = System.Drawing.Color.DarkGreen;
                lblResult.Text = "Result: " + n1 + " " + opSymbol + " " + n2 + " = " + result.ToString("0.####");
            }
            catch (FormatException)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Format Error: Please enter valid numeric numbers.";
            }
            catch (OverflowException)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Overflow Error: Number value is too large or small.";
            }
            catch (Exception ex)
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Error: " + ex.Message;
            }
        }
    }
}
