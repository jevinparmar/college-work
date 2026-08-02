<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_4.ChangePassword" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Unit 4 - Practical 3: Password Change</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #f4f6f9; margin: 20px; }
        .card { background: white; border: 1px solid #ccc; padding: 25px; border-radius: 6px; width: 400px; margin: 0 auto; }
        .card h2 { color: #003366; margin-top: 0; text-align: center; }
        .form-group { margin-bottom: 12px; }
        .form-group label { display: block; margin-bottom: 4px; }
        .form-group input { width: 100%; padding: 8px; box-sizing: border-box; }
        .btn { background-color: #dc3545; color: white; border: none; padding: 10px; width: 100%; border-radius: 4px; cursor: pointer; font-size: 16px; margin-top: 10px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <h2>Unit 4 - Practical 3: Password Change</h2>
            <hr />

            <div class="form-group">
                <label>User ID / Email:</label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Current Password:</label>
                <asp:TextBox ID="txtCurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>New Password:</label>
                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Confirm New Password:</label>
                <asp:TextBox ID="txtConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" CssClass="btn" OnClick="btnChangePassword_Click" />
            <br /><br />
            <asp:Label ID="lblMessage" runat="server" Font-Bold="true"></asp:Label>
        </div>
    </form>
</body>
</html>
