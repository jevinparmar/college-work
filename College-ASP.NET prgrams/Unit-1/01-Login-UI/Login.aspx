<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_1.Login" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login UI</title>
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
            <asp:Label ID="lblHeading" runat="server" Text="Student Portal Login" AssociatedControlID="txtUserId" TagKey="H2" CssClass="heading"></asp:Label>
            
            <div class="form-group">
                <asp:Label ID="lblUserId" runat="server" Text="User ID" AssociatedControlID="txtUserId"></asp:Label>
                <asp:TextBox ID="txtUserId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <asp:Label ID="lblPassword" runat="server" Text="Password" AssociatedControlID="txtPassword"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            
            <div class="checkbox-group">
                <asp:CheckBox ID="chkRememberMe" runat="server" Text="Remember Me" />
            </div>
            
            <div class="btn-container">
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-secondary" />
            </div>
            
            <asp:HyperLink ID="lnkForgotPassword" runat="server" NavigateUrl="#" Text="Forgot Password?" CssClass="info-link"></asp:HyperLink>
        </div>
    </form>
</body>
</html>
