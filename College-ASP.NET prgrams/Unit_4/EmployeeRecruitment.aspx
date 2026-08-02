<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeRecruitment.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_4.EmployeeRecruitment" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Unit 4 - Practical 4: Employee Recruitment CRUD (SqlDataReader)</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #f4f6f9; margin: 20px; }
        .card { background: white; border: 1px solid #ccc; padding: 25px; border-radius: 6px; width: 700px; margin: 0 auto; }
        .card h2 { color: #003366; margin-top: 0; text-align: center; }
        .form-row { display: flex; justify-content: space-between; margin-bottom: 10px; }
        .form-row label { width: 140px; font-weight: bold; }
        .form-row input, .form-row select { width: 480px; padding: 6px; }
        .btn-group { text-align: center; margin: 15px 0; }
        .btn { padding: 8px 16px; margin: 0 4px; border: none; border-radius: 4px; cursor: pointer; font-weight: bold; color: white; }
        .btn-add { background-color: #28a745; }
        .btn-update { background-color: #ffc107; color: #333; }
        .btn-delete { background-color: #dc3545; }
        .btn-search { background-color: #17a2b8; }
        .btn-clear { background-color: #6c757d; }
        .grid { margin-top: 20px; width: 100%; border-collapse: collapse; }
        .grid th, .grid td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        .grid th { background-color: #003366; color: white; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <h2>Unit 4 - Practical 4: Employee Recruitment Portal</h2>
            <hr />

            <div class="form-row">
                <label>Employee ID:</label>
                <asp:TextBox ID="txtEmployeeId" runat="server" Placeholder="(Auto / Enter ID for Search)"></asp:TextBox>
            </div>

            <div class="form-row">
                <label>Employee Name:</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>

            <div class="form-row">
                <label>Email Address:</label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </div>

            <div class="form-row">
                <label>Mobile Number:</label>
                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            </div>

            <div class="form-row">
                <label>Gender:</label>
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-row">
                <label>Department:</label>
                <asp:TextBox ID="txtDept" runat="server"></asp:TextBox>
            </div>

            <div class="form-row">
                <label>Qualification:</label>
                <asp:TextBox ID="txtQualification" runat="server"></asp:TextBox>
            </div>

            <div class="form-row">
                <label>Experience:</label>
                <asp:TextBox ID="txtExperience" runat="server" Placeholder="e.g. 2 Years"></asp:TextBox>
            </div>

            <div class="form-row">
                <label>City:</label>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </div>

            <div class="btn-group">
                <asp:Button ID="btnAdd" runat="server" Text="ADD" CssClass="btn btn-add" OnClick="btnAdd_Click" />
                <asp:Button ID="btnUpdate" runat="server" Text="UPDATE" CssClass="btn btn-update" OnClick="btnUpdate_Click" />
                <asp:Button ID="btnDelete" runat="server" Text="DELETE" CssClass="btn btn-delete" OnClick="btnDelete_Click" />
                <asp:Button ID="btnSearch" runat="server" Text="SEARCH" CssClass="btn btn-search" OnClick="btnSearch_Click" />
                <asp:Button ID="btnClear" runat="server" Text="CLEAR" CssClass="btn btn-clear" OnClick="btnClear_Click" />
            </div>

            <asp:Label ID="lblMessage" runat="server" Font-Bold="true"></asp:Label>

            <h3>Registered Employees List</h3>
            <asp:GridView ID="gvEmployees" runat="server" CssClass="grid" AutoGenerateColumns="true">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
