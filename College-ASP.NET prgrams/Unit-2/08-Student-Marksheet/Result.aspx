<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_2.Result" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Marksheet Result Details</title>
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
            max-width: 500px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            font-size: 14px;
        }
        th, td {
            padding: 8px 10px;
            border-bottom: 1px solid #dee2e6;
            text-align: left;
        }
        th {
            background-color: #e9ecef;
            color: #495057;
        }
        .pass {
            color: #28a745;
            font-weight: bold;
        }
        .fail {
            color: #dc3545;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Student Marksheet Result</h2>
            
            <table>
                <tr><th>Field</th><th>Details</th></tr>
                <tr><td>Roll Number:</td><td><asp:Label ID="lblRollNo" runat="server"></asp:Label></td></tr>
                <tr><td>Name:</td><td><asp:Label ID="lblName" runat="server"></asp:Label></td></tr>
                <tr><td>Course:</td><td><asp:Label ID="lblCourse" runat="server"></asp:Label></td></tr>
                <tr><td>Semester:</td><td><asp:Label ID="lblSemester" runat="server"></asp:Label></td></tr>
                <tr><td>Subject 1:</td><td><asp:Label ID="lblSub1" runat="server"></asp:Label></td></tr>
                <tr><td>Subject 2:</td><td><asp:Label ID="lblSub2" runat="server"></asp:Label></td></tr>
                <tr><td>Subject 3:</td><td><asp:Label ID="lblSub3" runat="server"></asp:Label></td></tr>
                <tr><td>Subject 4:</td><td><asp:Label ID="lblSub4" runat="server"></asp:Label></td></tr>
                <tr><td>Subject 5:</td><td><asp:Label ID="lblSub5" runat="server"></asp:Label></td></tr>
                <tr style="font-weight:bold; background-color:#f8f9fa;"><td>Total Marks:</td><td><asp:Label ID="lblTotal" runat="server"></asp:Label> / 500</td></tr>
                <tr style="font-weight:bold;"><td>Percentage:</td><td><asp:Label ID="lblPercentage" runat="server"></asp:Label>%</td></tr>
                <tr style="font-weight:bold;"><td>Grade:</td><td><asp:Label ID="lblGrade" runat="server"></asp:Label></td></tr>
                <tr style="font-weight:bold;"><td>Result Status:</td><td><asp:Label ID="lblResultStatus" runat="server"></asp:Label></td></tr>
            </table>

            <div class="btn-container">
                <asp:HyperLink ID="lnkBack" runat="server" NavigateUrl="Marksheet.aspx" CssClass="btn btn-secondary" Text="Back to Form" style="display:block; text-align:center; padding: 10px;"></asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
