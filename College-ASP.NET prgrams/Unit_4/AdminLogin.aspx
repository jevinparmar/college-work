<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_4.AdminLogin" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Unit 4 - Practical 5: Admin Login</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #f4f6f9; margin: 20px; }
        .card { background: white; border: 1px solid #ccc; padding: 25px; border-radius: 6px; width: 380px; margin: 50px auto; box-shadow: 0 4px 8px rgba(0,0,0,0.1); }
        .card h2 { color: #003366; margin-top: 0; text-align: center; }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; margin-bottom: 5px; font-weight: bold; }
        .form-group input { width: 100%; padding: 8px; box-sizing: border-box; }
        .btn { background-color: #003366; color: white; border: none; padding: 10px; width: 100%; border-radius: 4px; cursor: pointer; font-size: 16px; font-weight: bold; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <h2>Admin Login Portal</h2>
            <hr />

            <div class="form-group">
                <label>Admin Username:</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <asp:Button ID="btnLogin" runat="server" Text="Login as Admin" CssClass="btn" OnClick="btnLogin_Click" />
            <br /><br />
            <asp:Label ID="lblMessage" runat="server" Font-Bold="true"></asp:Label>
        </div>
    </form>
</body>
</html>
