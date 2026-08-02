<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginException.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_3.LoginException" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Unit 3 - Practical 7: Exception Handling in Login</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #f4f6f9; margin: 20px; }
        .card { background: white; border: 1px solid #ccc; padding: 25px; border-radius: 6px; width: 400px; margin: 0 auto; }
        .card h2 { color: #333; margin-top: 0; text-align: center; }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; margin-bottom: 5px; }
        .form-group input { width: 100%; padding: 8px; box-sizing: border-box; }
        .btn { background-color: #007bff; color: white; border: none; padding: 10px; width: 100%; border-radius: 4px; cursor: pointer; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <h2>Unit 3 - Practical 7: Safe Login with Exception Handling</h2>
            <hr />

            <div class="form-group">
                <label>Username:</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />
            <br /><br />
            <asp:Label ID="lblResult" runat="server" Font-Bold="true"></asp:Label>
        </div>
    </form>
</body>
</html>
