<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Marksheet.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_2.Marksheet" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Student Marksheet Entry</title>
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
        .validation-summary-errors {
            color: #dc3545;
            font-size: 13px;
            margin-bottom: 15px;
            padding-left: 20px;
        }
        .marks-section {
            margin-top: 15px;
            padding-top: 15px;
            border-top: 1px dashed #cccccc;
        }
        .marks-section h3 {
            margin-top: 0;
            font-size: 16px;
            color: #333;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Student Marksheet Entry</h2>

            <asp:ValidationSummary ID="valSummary" runat="server" ValidationGroup="MarksheetGroup" CssClass="validation-summary-errors" HeaderText="Please fix the following validation errors:" />

            <div class="grid-2">
                <div class="form-group">
                    <asp:Label ID="lblRollNo" runat="server" Text="Roll Number" AssociatedControlID="txtRollNo"></asp:Label>
                    <asp:TextBox ID="txtRollNo" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvRollNo" runat="server" ControlToValidate="txtRollNo" ErrorMessage="Roll Number is required." ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblStudentName" runat="server" Text="Student Name" AssociatedControlID="txtStudentName"></asp:Label>
                    <asp:TextBox ID="txtStudentName" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvStudentName" runat="server" ControlToValidate="txtStudentName" ErrorMessage="Student Name is required." ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="grid-2">
                <div class="form-group">
                    <asp:Label ID="lblCourse" runat="server" Text="Course" AssociatedControlID="txtCourse"></asp:Label>
                    <asp:TextBox ID="txtCourse" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCourse" runat="server" ControlToValidate="txtCourse" ErrorMessage="Course is required." ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblSemester" runat="server" Text="Semester" AssociatedControlID="txtSemester"></asp:Label>
                    <asp:TextBox ID="txtSemester" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSemester" runat="server" ControlToValidate="txtSemester" ErrorMessage="Semester is required." ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="grid-2">
                <div class="form-group">
                    <asp:Label ID="lblEmail" runat="server" Text="Email ID" AssociatedControlID="txtEmail"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email address format." ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Invalid Format</asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblMobile" runat="server" Text="Mobile Number" AssociatedControlID="txtMobile"></asp:Label>
                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile is required." ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile must be 10 digits." ValidationExpression="^\d{10}$" ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* 10 digits</asp:RegularExpressionValidator>
                </div>
            </div>

            <div class="marks-section">
                <h3>Enter Subject Marks (0 - 100)</h3>
                
                <div class="grid-2">
                    <div class="form-group">
                        <asp:Label ID="lblSub1" runat="server" Text="Subject 1" AssociatedControlID="txtSub1"></asp:Label>
                        <asp:TextBox ID="txtSub1" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSub1" runat="server" ControlToValidate="txtSub1" ErrorMessage="Subject 1 marks required." ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvSub1" runat="server" ControlToValidate="txtSub1" MinimumValue="0" MaximumValue="100" Type="Integer" ErrorMessage="Subject 1 marks must be between 0 and 100." ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Must be 0-100</asp:RangeValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblSub2" runat="server" Text="Subject 2" AssociatedControlID="txtSub2"></asp:Label>
                        <asp:TextBox ID="txtSub2" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSub2" runat="server" ControlToValidate="txtSub2" ErrorMessage="Subject 2 marks required." ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvSub2" runat="server" ControlToValidate="txtSub2" MinimumValue="0" MaximumValue="100" Type="Integer" ErrorMessage="Subject 2 marks must be between 0 and 100." ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Must be 0-100</asp:RangeValidator>
                    </div>
                </div>

                <div class="grid-2">
                    <div class="form-group">
                        <asp:Label ID="lblSub3" runat="server" Text="Subject 3" AssociatedControlID="txtSub3"></asp:Label>
                        <asp:TextBox ID="txtSub3" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSub3" runat="server" ControlToValidate="txtSub3" ErrorMessage="Subject 3 marks required." ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvSub3" runat="server" ControlToValidate="txtSub3" MinimumValue="0" MaximumValue="100" Type="Integer" ErrorMessage="Subject 3 marks must be between 0 and 100." ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Must be 0-100</asp:RangeValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblSub4" runat="server" Text="Subject 4" AssociatedControlID="txtSub4"></asp:Label>
                        <asp:TextBox ID="txtSub4" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSub4" runat="server" ControlToValidate="txtSub4" ErrorMessage="Subject 4 marks required." ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvSub4" runat="server" ControlToValidate="txtSub4" MinimumValue="0" MaximumValue="100" Type="Integer" ErrorMessage="Subject 4 marks must be between 0 and 100." ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Must be 0-100</asp:RangeValidator>
                    </div>
                </div>

                <div class="form-group" style="max-width: 50%;">
                    <asp:Label ID="lblSub5" runat="server" Text="Subject 5" AssociatedControlID="txtSub5"></asp:Label>
                    <asp:TextBox ID="txtSub5" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSub5" runat="server" ControlToValidate="txtSub5" ErrorMessage="Subject 5 marks required." ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvSub5" runat="server" ControlToValidate="txtSub5" MinimumValue="0" MaximumValue="100" Type="Integer" ErrorMessage="Subject 5 marks must be between 0 and 100." ForeColor="Red" ValidationGroup="MarksheetGroup" Display="Dynamic" CssClass="error-message">* Must be 0-100</asp:RangeValidator>
                </div>
            </div>

            <div class="btn-container">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit Marks" ValidationGroup="MarksheetGroup" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-secondary" OnClick="btnReset_Click" CausesValidation="false" />
            </div>

            <asp:Label ID="lblError" runat="server" CssClass="error-message" style="text-align:center; margin-top:10px;"></asp:Label>
        </div>
    </form>
</body>
</html>
