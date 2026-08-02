<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MarksheetException.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_3.MarksheetException" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Unit 3 - Practical 8: Marksheet Exception Handling</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #f4f6f9; margin: 20px; }
        .card { background: white; border: 1px solid #ccc; padding: 25px; border-radius: 6px; width: 480px; margin: 0 auto; }
        .card h2 { color: #333; margin-top: 0; text-align: center; }
        .form-group { margin-bottom: 12px; }
        .form-group label { display: inline-block; width: 140px; }
        .form-group input { width: 280px; padding: 6px; }
        .btn { background-color: #28a745; color: white; border: none; padding: 10px; width: 100%; border-radius: 4px; cursor: pointer; font-size: 16px; }
        .result-panel { margin-top: 20px; padding: 15px; border-radius: 4px; background-color: #e9ecef; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <h2>Unit 3 - Practical 8: Student Marksheet Calculator</h2>
            <hr />

            <div class="form-group">
                <label>Student Name:</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Roll Number:</label>
                <asp:TextBox ID="txtRollNo" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Subject 1 Marks:</label>
                <asp:TextBox ID="txtSub1" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Subject 2 Marks:</label>
                <asp:TextBox ID="txtSub2" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Subject 3 Marks:</label>
                <asp:TextBox ID="txtSub3" runat="server"></asp:TextBox>
            </div>

            <br />
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate Result" CssClass="btn" OnClick="btnCalculate_Click" />
            <br /><br />
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>

            <asp:Panel ID="pnlResult" runat="server" Visible="false" CssClass="result-panel">
                <h4>Marksheet Result</h4>
                <p><strong>Student Name:</strong> <asp:Label ID="lblResName" runat="server"></asp:Label></p>
                <p><strong>Roll Number:</strong> <asp:Label ID="lblResRoll" runat="server"></asp:Label></p>
                <p><strong>Total Marks:</strong> <asp:Label ID="lblTotal" runat="server"></asp:Label> / 300</p>
                <p><strong>Percentage:</strong> <asp:Label ID="lblPercentage" runat="server"></asp:Label>%</p>
                <p><strong>Result Status:</strong> <asp:Label ID="lblStatus" runat="server" Font-Bold="true"></asp:Label></p>
                <p><strong>Grade:</strong> <asp:Label ID="lblGrade" runat="server" Font-Bold="true"></asp:Label></p>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
