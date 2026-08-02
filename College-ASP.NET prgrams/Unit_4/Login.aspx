<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_4.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Unit 4 - Practical 1: User Login</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #f4f6f9; margin: 20px; }
        .card { background: white; border: 1px solid #ccc; padding: 25px; border-radius: 6px; width: 400px; margin: 0 auto; }
        .card h2 { color: #003366; margin-top: 0; text-align: center; }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; margin-bottom: 5px; }
        .form-group input { width: 100%; padding: 8px; box-sizing: border-box; }
        .btn { background-color: #28a745; color: white; border: none; padding: 10px; width: 100%; border-radius: 4px; cursor: pointer; font-size: 16px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <h2>Unit 4 - Practical 1: User Login</h2>
            <hr />

            <div class="form-group">
                <label>Email Address:</label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />
            <br /><br />
            <asp:Label ID="lblMessage" runat="server" Font-Bold="true"></asp:Label>
            <br /><br />
            <a href="Signup.aspx">Don't have an account? Sign up here</a>
        </div>
    </form>
</body>
</html>
