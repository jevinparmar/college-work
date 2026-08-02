<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStateDemo.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_3.ViewStateDemo" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Unit 3 - Practical 5: ViewState and QueryString</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #f4f6f9; margin: 20px; }
        .card { background: white; border: 1px solid #ccc; padding: 20px; border-radius: 6px; width: 450px; margin-bottom: 20px; }
        .card h3 { color: #004085; margin-top: 0; }
        .btn { background-color: #007bff; color: white; border: none; padding: 8px 16px; border-radius: 4px; cursor: pointer; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Unit 3 - Practical 5: ViewState and QueryString Demonstration</h2>

        <!-- ViewState Section -->
        <div class="card">
            <h3>1. ViewState Counter Demo</h3>
            <p>Click the button to increment the counter value saved in ViewState.</p>
            <asp:Button ID="btnIncrement" runat="server" Text="Increment ViewState Counter" CssClass="btn" OnClick="btnIncrement_Click" />
            <br /><br />
            <asp:Label ID="lblViewStateValue" runat="server" Font-Bold="true" ForeColor="DarkBlue"></asp:Label>
        </div>

        <!-- QueryString Section -->
        <div class="card">
            <h3>2. QueryString Navigation Demo</h3>
            <p>
                Name: <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </p>
            <p>
                Course: <asp:TextBox ID="txtCourse" runat="server"></asp:TextBox>
            </p>
            <asp:Button ID="btnRedirect" runat="server" Text="Submit via QueryString" CssClass="btn" OnClick="btnRedirect_Click" />
        </div>
    </form>
</body>
</html>
