using System;
using System.Web.UI;

namespace ASP.NET_WebForms_Practicals.Unit_2
{
    public partial class Billing : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lstProducts.SelectedIndex = 0;
                UpdateProductInfo();
            }
        }

        protected void lstProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            UpdateProductInfo();
            lblResult.Text = "";
        }

        private void UpdateProductInfo()
        {
            string selectedItem = lstProducts.SelectedValue;
            int price = GetProductPrice(selectedItem);
            lblUnitPrice.Text = "₹ " + price.ToString("N2");

            string imgName = selectedItem.ToLower() + ".svg";
            imgProduct.ImageUrl = "~/Unit-2/10-Hardware-Billing/Images/" + imgName;
        }

        private int GetProductPrice(string item)
        {
            switch (item)
            {
                case "Keyboard": return 800;
                case "Mouse": return 500;
                case "Monitor": return 9000;
                case "Printer": return 7500;
                case "Speaker": return 1500;
                default: return 0;
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string selectedItem = lstProducts.SelectedValue;
                int unitPrice = GetProductPrice(selectedItem);
                int quantity;

                if (int.TryParse(txtQuantity.Text, out quantity))
                {
                    int totalCost = unitPrice * quantity;
                    lblResult.Text = "<strong>Billing Summary:</strong><br />" +
                                     "Selected Item: " + Server.HtmlEncode(selectedItem) + "<br />" +
                                     "Unit Price: ₹ " + unitPrice.ToString("N2") + "<br />" +
                                     "Quantity: " + quantity.ToString() + "<br />" +
                                     "<strong>Total Cost: ₹ " + totalCost.ToString("N2") + "</strong>";
                }
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            lstProducts.SelectedIndex = 0;
            txtQuantity.Text = "1";
            UpdateProductInfo();
            lblResult.Text = "";
        }
    }
}
