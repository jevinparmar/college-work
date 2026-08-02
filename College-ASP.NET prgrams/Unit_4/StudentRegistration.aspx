<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_4.StudentRegistration" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Unit 4 - Practical 2: Student Registration</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #f4f6f9; margin: 20px; }
        .card { background: white; border: 1px solid #ccc; padding: 25px; border-radius: 6px; width: 500px; margin: 0 auto; }
        .card h2 { color: #003366; margin-top: 0; text-align: center; }
        .form-group { margin-bottom: 12px; }
        .form-group label { display: inline-block; width: 140px; }
        .form-group input, .form-group select { width: 300px; padding: 6px; }
        .btn { background-color: #0066cc; color: white; border: none; padding: 10px; width: 100%; border-radius: 4px; cursor: pointer; font-size: 16px; margin-top: 10px; }
        .success-box { background-color: #d4edda; border: 1px solid #c3e6cb; color: #155724; padding: 15px; border-radius: 4px; margin-top: 15px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <h2>Unit 4 - Practical 2: Student Registration</h2>
            <hr />

            <div class="form-group">
                <label>Student Name:</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Email Address:</label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Mobile Number:</label>
                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Gender:</label>
                <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Text="Male" Value="Male" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div class="form-group">
                <label>Date of Birth:</label>
                <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Course:</label>
                <asp:DropDownList ID="ddlCourse" runat="server">
                    <asp:ListItem Text="-- Select Course --" Value=""></asp:ListItem>
                    <asp:ListItem Text="BCA" Value="BCA"></asp:ListItem>
                    <asp:ListItem Text="MCA" Value="MCA"></asp:ListItem>
                    <asp:ListItem Text="B.Sc IT" Value="B.Sc IT"></asp:ListItem>
                    <asp:ListItem Text="M.Sc IT" Value="M.Sc IT"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label>Address:</label>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>City:</label>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </div>

            <asp:Button ID="btnSubmit" runat="server" Text="Register Student" CssClass="btn" OnClick="btnSubmit_Click" />
            <br />
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>

            <asp:Panel ID="pnlSuccess" runat="server" Visible="false" CssClass="success-box">
                <h4>Registration Successful!</h4>
                <p><strong>Generated User ID (Email):</strong> <asp:Label ID="lblUserId" runat="server" Font-Bold="true"></asp:Label></p>
                <p><strong>Generated Password:</strong> <asp:Label ID="lblPassword" runat="server" Font-Bold="true"></asp:Label></p>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
