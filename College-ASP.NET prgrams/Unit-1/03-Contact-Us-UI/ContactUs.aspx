<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_1.ContactUs" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Contact Us UI</title>
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
        .office-section {
            margin-top: 25px;
            padding-top: 20px;
            border-top: 1px solid #eeeeee;
            font-size: 13px;
            color: #666666;
        }
        .office-section h3 {
            margin: 0 0 10px 0;
            color: #333333;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Contact Us</h2>
            
            <div class="form-group">
                <asp:Label ID="lblName" runat="server" Text="Your Name" AssociatedControlID="txtName"></asp:Label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <asp:Label ID="lblEmail" runat="server" Text="Email Address" AssociatedControlID="txtEmail"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <asp:Label ID="lblMobile" runat="server" Text="Mobile Number" AssociatedControlID="txtMobile"></asp:Label>
                <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <asp:Label ID="lblSubject" runat="server" Text="Subject" AssociatedControlID="txtSubject"></asp:Label>
                <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblContactMethod" runat="server" Text="Preferred Contact Method" AssociatedControlID="ddlContactMethod"></asp:Label>
                <asp:DropDownList ID="ddlContactMethod" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select option" Value="" />
                    <asp:ListItem Text="Email" Value="Email" />
                    <asp:ListItem Text="Phone Call" Value="Phone" />
                    <asp:ListItem Text="SMS" Value="SMS" />
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <asp:Label ID="lblMessage" runat="server" Text="Message" AssociatedControlID="txtMessage"></asp:Label>
                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4"></asp:TextBox>
            </div>

            <div class="btn-container">
                <asp:Button ID="btnSend" runat="server" Text="Send Message" CssClass="btn btn-primary" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-secondary" />
            </div>

            <div class="office-section">
                <h3>Our Office</h3>
                <p><strong>Address:</strong> 101, Science & Technology Building, Sector 5, Salt Lake, Kolkata, West Bengal 700091</p>
                <p><strong>Email:</strong> contact@college.edu</p>
                <p><strong>Phone:</strong> +91 33 2345 6789</p>
            </div>
        </div>
    </form>
</body>
</html>
