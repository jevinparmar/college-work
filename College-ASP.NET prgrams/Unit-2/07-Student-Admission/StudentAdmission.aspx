<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentAdmission.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_2.StudentAdmission" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Student Admission Form</title>
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
            max-width: 600px;
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
        .result-panel {
            margin-top: 25px;
            padding: 20px;
            background-color: #f8f9fa;
            border: 1px solid #e9ecef;
            border-radius: 6px;
        }
        .result-panel h3 {
            margin-top: 0;
            margin-bottom: 15px;
            font-size: 18px;
            color: #333;
        }
        .result-panel table {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
        }
        .result-panel td {
            padding: 6px 0;
            border-bottom: 1px solid #f1f3f5;
        }
        .result-panel td:first-child {
            font-weight: bold;
            color: #495057;
            width: 40%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Student Admission Form</h2>
            
            <asp:ValidationSummary ID="valSummary" runat="server" ValidationGroup="AdmissionGroup" CssClass="validation-summary-errors" HeaderText="Please resolve the following entries:" />

            <div class="grid-2">
                <div class="form-group">
                    <asp:Label ID="lblFullName" runat="server" Text="Full Name" AssociatedControlID="txtFullName"></asp:Label>
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Full Name is required." ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblFatherName" runat="server" Text="Father's Name" AssociatedControlID="txtFatherName"></asp:Label>
                    <asp:TextBox ID="txtFatherName" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFatherName" runat="server" ControlToValidate="txtFatherName" ErrorMessage="Father's Name is required." ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="grid-2">
                <div class="form-group">
                    <asp:Label ID="lblDob" runat="server" Text="Date of Birth" AssociatedControlID="txtDob"></asp:Label>
                    <asp:TextBox ID="txtDob" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDob" runat="server" ControlToValidate="txtDob" ErrorMessage="Date of Birth is required." ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label>Gender</label>
                    <div class="radio-group">
                        <asp:RadioButton ID="radMale" runat="server" GroupName="Gender" Text="Male" Checked="true" />
                        <asp:RadioButton ID="radFemale" runat="server" GroupName="Gender" Text="Female" />
                    </div>
                </div>
            </div>

            <div class="grid-2">
                <div class="form-group">
                    <asp:Label ID="lblEmail" runat="server" Text="Email ID" AssociatedControlID="txtEmail"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email address format." ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* Invalid Format</asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblMobile" runat="server" Text="Mobile Number" AssociatedControlID="txtMobile"></asp:Label>
                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile number is required." ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile number must be exactly 10 digits." ValidationExpression="^\d{10}$" ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* 10 digits required</asp:RegularExpressionValidator>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblAddress" runat="server" Text="Home Address" AssociatedControlID="txtAddress"></asp:Label>
                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="2"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required." ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
            </div>

            <div class="grid-2">
                <div class="form-group">
                    <asp:Label ID="lblCity" runat="server" Text="City" AssociatedControlID="txtCity"></asp:Label>
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" ErrorMessage="City is required." ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblState" runat="server" Text="State" AssociatedControlID="txtState"></asp:Label>
                    <asp:TextBox ID="txtState" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="txtState" ErrorMessage="State is required." ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="grid-2">
                <div class="form-group">
                    <asp:Label ID="lblPincode" runat="server" Text="Pin Code" AssociatedControlID="txtPincode"></asp:Label>
                    <asp:TextBox ID="txtPincode" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPincode" runat="server" ControlToValidate="txtPincode" ErrorMessage="Pin Code is required." ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPincode" runat="server" ControlToValidate="txtPincode" ErrorMessage="Pin Code must be exactly 6 digits." ValidationExpression="^\d{6}$" ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* 6 digits required</asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblCourse" runat="server" Text="Course Name" AssociatedControlID="ddlCourse"></asp:Label>
                    <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Select Course" Value="" />
                        <asp:ListItem Text="BCA" Value="BCA" />
                        <asp:ListItem Text="B.Sc. IT" Value="BSC_IT" />
                        <asp:ListItem Text="MCA" Value="MCA" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCourse" runat="server" ControlToValidate="ddlCourse" InitialValue="" ErrorMessage="Please select a course." ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="grid-2">
                <div class="form-group">
                    <asp:Label ID="lblSemester" runat="server" Text="Semester" AssociatedControlID="ddlSemester"></asp:Label>
                    <asp:DropDownList ID="ddlSemester" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Select Semester" Value="" />
                        <asp:ListItem Text="Semester 1" Value="1" />
                        <asp:ListItem Text="Semester 2" Value="2" />
                        <asp:ListItem Text="Semester 3" Value="3" />
                        <asp:ListItem Text="Semester 4" Value="4" />
                        <asp:ListItem Text="Semester 5" Value="5" />
                        <asp:ListItem Text="Semester 6" Value="6" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvSemester" runat="server" ControlToValidate="ddlSemester" InitialValue="" ErrorMessage="Please select a semester." ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblQualification" runat="server" Text="Previous Qualification" AssociatedControlID="txtQualification"></asp:Label>
                    <asp:TextBox ID="txtQualification" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvQualification" runat="server" ControlToValidate="txtQualification" ErrorMessage="Previous qualification is required." ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="grid-2">
                <div class="form-group">
                    <asp:Label ID="lblPercentage" runat="server" Text="Previous Percentage (%)" AssociatedControlID="txtPercentage"></asp:Label>
                    <asp:TextBox ID="txtPercentage" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPercentage" runat="server" ControlToValidate="txtPercentage" ErrorMessage="Percentage is required." ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* Required</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvPercentage" runat="server" ControlToValidate="txtPercentage" MinimumValue="0" MaximumValue="100" Type="Double" ErrorMessage="Percentage must be between 0.0 and 100.0." ForeColor="Red" ValidationGroup="AdmissionGroup" Display="Dynamic" CssClass="error-message">* Must be 0-100</asp:RangeValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblCategory" runat="server" Text="Admission Category" AssociatedControlID="ddlCategory"></asp:Label>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control">
                        <asp:ListItem Text="General" Value="General" />
                        <asp:ListItem Text="OBC" Value="OBC" />
                        <asp:ListItem Text="SC / ST" Value="SC_ST" />
                        <asp:ListItem Text="Management Quota" Value="Management" />
                    </asp:DropDownList>
                </div>
            </div>

            <div class="checkbox-group">
                <asp:CheckBox ID="chkTerms" runat="server" Text="I accept the admission guidelines and terms." />
            </div>

            <div class="btn-container">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="AdmissionGroup" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-secondary" OnClick="btnReset_Click" CausesValidation="false" />
            </div>

            <asp:Label ID="lblStatus" runat="server" CssClass="success-message"></asp:Label>

            <asp:Panel ID="pnlResult" runat="server" Visible="false" CssClass="result-panel">
                <h3>Submitted Information Details</h3>
                <table>
                    <tr><td>Student Name:</td><td><asp:Label ID="valFullName" runat="server"></asp:Label></td></tr>
                    <tr><td>Father's Name:</td><td><asp:Label ID="valFatherName" runat="server"></asp:Label></td></tr>
                    <tr><td>DOB:</td><td><asp:Label ID="valDob" runat="server"></asp:Label></td></tr>
                    <tr><td>Gender:</td><td><asp:Label ID="valGender" runat="server"></asp:Label></td></tr>
                    <tr><td>Email:</td><td><asp:Label ID="valEmail" runat="server"></asp:Label></td></tr>
                    <tr><td>Mobile No:</td><td><asp:Label ID="valMobile" runat="server"></asp:Label></td></tr>
                    <tr><td>Address:</td><td><asp:Label ID="valAddress" runat="server"></asp:Label></td></tr>
                    <tr><td>City / State / Pin:</td><td><asp:Label ID="valLocation" runat="server"></asp:Label></td></tr>
                    <tr><td>Course / Semester:</td><td><asp:Label ID="valCourseSem" runat="server"></asp:Label></td></tr>
                    <tr><td>Qualification / %:</td><td><asp:Label ID="valQualPercentage" runat="server"></asp:Label></td></tr>
                    <tr><td>Category:</td><td><asp:Label ID="valCategory" runat="server"></asp:Label></td></tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
