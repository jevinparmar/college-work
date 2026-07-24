<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_1.ChangePassword" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Change Password UI</title>
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
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Change Password</h2>
            
            <div class="form-group">
                <asp:Label ID="lblUsername" runat="server" Text="Username" AssociatedControlID="txtUsername"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <asp:Label ID="lblCurrentPassword" runat="server" Text="Current Password" AssociatedControlID="txtCurrentPassword"></asp:Label>
                <asp:TextBox ID="txtCurrentPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <asp:Label ID="lblNewPassword" runat="server" Text="New Password" AssociatedControlID="txtNewPassword"></asp:Label>
                <asp:TextBox ID="txtNewPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm New Password" AssociatedControlID="txtConfirmPassword"></asp:Label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            
            <div class="checkbox-group">
                <asp:CheckBox ID="chkShowPassword" runat="server" AutoPostBack="true" OnCheckedChanged="chkShowPassword_CheckedChanged" Text="Show Passwords" />
            </div>
            
            <div class="btn-container">
                <asp:Button ID="btnChange" runat="server" Text="Change Password" CssClass="btn btn-primary" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-secondary" />
            </div>
        </div>
    </form>
</body>
</html>
