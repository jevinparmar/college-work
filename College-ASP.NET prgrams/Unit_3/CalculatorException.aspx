<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalculatorException.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_3.CalculatorException" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Unit 3 - Practical 9: Calculator Exception Handling</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #f4f6f9; margin: 20px; }
        .card { background: white; border: 1px solid #ccc; padding: 25px; border-radius: 6px; width: 400px; margin: 0 auto; }
        .card h2 { color: #333; margin-top: 0; text-align: center; }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; margin-bottom: 5px; }
        .form-group input { width: 100%; padding: 8px; box-sizing: border-box; }
        .btn-group { display: flex; justify-content: space-between; margin-top: 15px; }
        .btn { padding: 10px 15px; border: none; border-radius: 4px; cursor: pointer; color: white; background-color: #007bff; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <h2>Unit 3 - Practical 9: Robust Calculator</h2>
            <hr />

            <div class="form-group">
                <label>Number 1:</label>
                <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Number 2:</label>
                <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
            </div>

            <div class="btn-group">
                <asp:Button ID="btnAdd" runat="server" Text="Add (+)" CssClass="btn" OnClick="btnAdd_Click" />
                <asp:Button ID="btnSubtract" runat="server" Text="Subtract (-)" CssClass="btn" OnClick="btnSubtract_Click" />
                <asp:Button ID="btnMultiply" runat="server" Text="Multiply (*)" CssClass="btn" OnClick="btnMultiply_Click" />
                <asp:Button ID="btnDivide" runat="server" Text="Divide (/)" CssClass="btn" OnClick="btnDivide_Click" />
            </div>

            <br /><br />
            <asp:Label ID="lblResult" runat="server" Font-Bold="true" Font-Size="Large"></asp:Label>
        </div>
    </form>
</body>
</html>
