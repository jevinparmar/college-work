<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_2.Calculator" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Simple Calculator</title>
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

        .calc-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 10px;
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Simple Calculator</h2>
            
            <div class="form-group">
                <asp:Label ID="lblFirstNum" runat="server" Text="First Number" AssociatedControlID="txtFirstNum"></asp:Label>
                <asp:TextBox ID="txtFirstNum" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstNum" runat="server" ControlToValidate="txtFirstNum" ErrorMessage="First Number is required." ForeColor="Red" Display="Dynamic" CssClass="error-message"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvFirstNum" runat="server" ControlToValidate="txtFirstNum" Operator="DataTypeCheck" Type="Double" ErrorMessage="Please enter a valid numeric value." ForeColor="Red" Display="Dynamic" CssClass="error-message"></asp:CompareValidator>
            </div>
            
            <div class="form-group">
                <asp:Label ID="lblSecondNum" runat="server" Text="Second Number" AssociatedControlID="txtSecondNum"></asp:Label>
                <asp:TextBox ID="txtSecondNum" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSecondNum" runat="server" ControlToValidate="txtSecondNum" ErrorMessage="Second Number is required." ForeColor="Red" Display="Dynamic" CssClass="error-message"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvSecondNum" runat="server" ControlToValidate="txtSecondNum" Operator="DataTypeCheck" Type="Double" ErrorMessage="Please enter a valid numeric value." ForeColor="Red" Display="Dynamic" CssClass="error-message"></asp:CompareValidator>
            </div>
            
            <div class="calc-grid">
                <asp:Button ID="btnAdd" runat="server" Text="+" CssClass="btn btn-primary" OnClick="btnOperation_Click" />
                <asp:Button ID="btnSubtract" runat="server" Text="-" CssClass="btn btn-primary" OnClick="btnOperation_Click" />
                <asp:Button ID="btnMultiply" runat="server" Text="×" CssClass="btn btn-primary" OnClick="btnOperation_Click" />
                <asp:Button ID="btnDivide" runat="server" Text="÷" CssClass="btn btn-primary" OnClick="btnOperation_Click" />
            </div>

            <div class="btn-container" style="margin-top:10px;">
                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-secondary" OnClick="btnClear_Click" CausesValidation="false" />
            </div>
            
            <asp:Label ID="lblResult" runat="server" CssClass="success-message" style="display:block;"></asp:Label>
        </div>
    </form>
</body>
</html>
