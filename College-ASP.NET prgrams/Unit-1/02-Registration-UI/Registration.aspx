<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_1.Registration" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Registration UI</title>
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

        .container {
            max-width: 550px;
        }
        .grid-2 {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Course Registration</h2>
            
            <div class="form-group">
                <asp:Label ID="lblFullName" runat="server" Text="Full Name" AssociatedControlID="txtFullName"></asp:Label>
                <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
            <div class="grid-2">
                <div class="form-group">
                    <asp:Label ID="lblUsername" runat="server" Text="Username" AssociatedControlID="txtUsername"></asp:Label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblEmail" runat="server" Text="Email Address" AssociatedControlID="txtEmail"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>
            </div>
            
            <div class="grid-2">
                <div class="form-group">
                    <asp:Label ID="lblMobile" runat="server" Text="Mobile Number" AssociatedControlID="txtMobile"></asp:Label>
                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Gender</label>
                    <div class="radio-group">
                        <asp:RadioButton ID="radMale" runat="server" GroupName="Gender" Text="Male" />
                        <asp:RadioButton ID="radFemale" runat="server" GroupName="Gender" Text="Female" />
                    </div>
                </div>
            </div>
            
            <div class="grid-2">
                <div class="form-group">
                    <asp:Label ID="lblDob" runat="server" Text="Date of Birth" AssociatedControlID="txtDob"></asp:Label>
                    <asp:TextBox ID="txtDob" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblCity" runat="server" Text="City" AssociatedControlID="txtCity"></asp:Label>
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblCourse" runat="server" Text="Select Course" AssociatedControlID="ddlCourse"></asp:Label>
                <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select a Course" Value="" />
                    <asp:ListItem Text="BCA (Bachelor of Computer Applications)" Value="BCA" />
                    <asp:ListItem Text="B.Sc. IT" Value="BSC_IT" />
                    <asp:ListItem Text="MCA (Master of Computer Applications)" Value="MCA" />
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <asp:Label ID="lblAddress" runat="server" Text="Address" AssociatedControlID="txtAddress"></asp:Label>
                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
            </div>

            <div class="grid-2">
                <div class="form-group">
                    <asp:Label ID="lblPassword" runat="server" Text="Password" AssociatedControlID="txtPassword"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password" AssociatedControlID="txtConfirmPassword"></asp:Label>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
            </div>

            <div class="checkbox-group">
                <asp:CheckBox ID="chkTerms" runat="server" Text="I accept the Terms and Conditions" />
            </div>

            <div class="btn-container">
                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-secondary" />
            </div>
        </div>
    </form>
</body>
</html>
