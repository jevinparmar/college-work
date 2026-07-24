<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_2.Billing" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Hardware Store Billing</title>
    <style>
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            background: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
            box-sizing: border-box;
        }
        h2 {
            margin-top: 0;
            margin-bottom: 20px;
            color: #333333;
            text-align: center;
            font-size: 24px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: 600;
            color: #495057;
            font-size: 14px;
        }
        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
            transition: border-color 0.2s;
        }
        .form-control:focus {
            border-color: #80bdff;
            outline: none;
        }
        .checkbox-group {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-bottom: 15px;
            font-size: 14px;
            color: #495057;
        }
        .btn-container {
            display: flex;
            gap: 10px;
            margin-top: 20px;
        }
        .btn {
            flex: 1;
            padding: 10px;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            text-align: center;
            transition: background-color 0.2s;
        }
        .btn-primary {
            background-color: #007bff;
            color: white;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .btn-secondary {
            background-color: #6c757d;
            color: white;
        }
        .btn-secondary:hover {
            background-color: #5a6268;
        }
        .error-message {
            color: #dc3545;
            font-size: 12px;
            margin-top: 5px;
            display: block;
        }
        .success-message {
            color: #28a745;
            font-size: 14px;
            margin-top: 15px;
            text-align: center;
            font-weight: bold;
        }
        .info-link {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #007bff;
            text-decoration: none;
            font-size: 13px;
        }
        .info-link:hover {
            text-decoration: underline;
        }
        .radio-group {
            display: flex;
            gap: 15px;
            font-size: 14px;
            color: #495057;
            align-items: center;
        }

        .container {
            max-width: 550px;
        }
        .billing-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }
        .image-box {
            border: 1px solid #ced4da;
            border-radius: 4px;
            padding: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 150px;
            background-color: #fafafa;
        }
        .image-box img {
            max-height: 100%;
            max-width: 100%;
        }
        .price-label {
            font-size: 16px;
            font-weight: bold;
            color: #28a745;
            margin-top: 5px;
            display: block;
        }
        .validation-summary-errors {
            color: #dc3545;
            font-size: 13px;
            margin-bottom: 15px;
            padding-left: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Hardware Store Billing</h2>

            <asp:ValidationSummary ID="valSummary" runat="server" CssClass="validation-summary-errors" HeaderText="Please fix the following entries:" />

            <div class="billing-grid">
                <div>
                    <div class="form-group">
                        <asp:Label ID="lblProductList" runat="server" Text="Select Product" AssociatedControlID="lstProducts"></asp:Label>
                        <asp:ListBox ID="lstProducts" runat="server" CssClass="form-control" Rows="5" AutoPostBack="true" OnSelectedIndexChanged="lstProducts_SelectedIndexChanged">
                            <asp:ListItem Text="Keyboard" Value="Keyboard" />
                            <asp:ListItem Text="Mouse" Value="Mouse" />
                            <asp:ListItem Text="Monitor" Value="Monitor" />
                            <asp:ListItem Text="Printer" Value="Printer" />
                            <asp:ListItem Text="Speaker" Value="Speaker" />
                        </asp:ListBox>
                        <asp:RequiredFieldValidator ID="rfvProducts" runat="server" ControlToValidate="lstProducts" ErrorMessage="Please select a product." ForeColor="Red" Display="Dynamic" CssClass="error-message"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div>
                    <label>Product Visual</label>
                    <div class="image-box">
                        <asp:Image ID="imgProduct" runat="server" AlternateText="Select a product" ImageUrl="~/Unit-2/10-Hardware-Billing/Images/keyboard.svg" />
                    </div>
                    <div class="form-group" style="margin-top: 10px;">
                        <label>Unit Price</label>
                        <asp:Label ID="lblUnitPrice" runat="server" CssClass="price-label" Text="₹ 800.00"></asp:Label>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblQuantity" runat="server" Text="Quantity (1 - 100)" AssociatedControlID="txtQuantity"></asp:Label>
                <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control" Text="1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvQuantity" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity is required." ForeColor="Red" Display="Dynamic" CssClass="error-message"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvQuantity" runat="server" ControlToValidate="txtQuantity" MinimumValue="1" MaximumValue="100" Type="Integer" ErrorMessage="Quantity must be between 1 and 100." ForeColor="Red" Display="Dynamic" CssClass="error-message"></asp:RangeValidator>
            </div>

            <div class="btn-container">
                <asp:Button ID="btnCalculate" runat="server" Text="Calculate Bill" CssClass="btn btn-primary" OnClick="btnCalculate_Click" />
                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-secondary" OnClick="btnClear_Click" CausesValidation="false" />
            </div>

            <asp:Label ID="lblResult" runat="server" CssClass="success-message" style="display:block; text-align:left; line-height: 1.6; color:#495057; border-top:1px dashed #ccc; padding-top:15px; margin-top:20px;"></asp:Label>
        </div>
    </form>
</body>
</html>
