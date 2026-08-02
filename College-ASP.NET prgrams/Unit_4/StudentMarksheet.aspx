<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentMarksheet.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_4.StudentMarksheet" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Unit 4 - Practical 5: Student Marksheet Admin CRUD</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #f4f6f9; margin: 20px; }
        .card { background: white; border: 1px solid #ccc; padding: 25px; border-radius: 6px; width: 750px; margin: 0 auto; }
        .header-bar { display: flex; justify-content: space-between; align-items: center; background: #003366; color: white; padding: 10px 20px; border-radius: 4px; }
        .header-bar h2 { margin: 0; font-size: 20px; }
        .form-row { display: flex; justify-content: space-between; margin-bottom: 10px; margin-top: 15px; }
        .form-row label { width: 140px; font-weight: bold; }
        .form-row input { width: 550px; padding: 6px; }
        .btn-group { text-align: center; margin: 20px 0; }
        .btn { padding: 8px 16px; margin: 0 4px; border: none; border-radius: 4px; cursor: pointer; font-weight: bold; color: white; }
        .btn-add { background-color: #28a745; }
        .btn-update { background-color: #ffc107; color: #333; }
        .btn-delete { background-color: #dc3545; }
        .btn-search { background-color: #17a2b8; }
        .btn-clear { background-color: #6c757d; }
        .btn-logout { background-color: #e74c3c; color: white; border: none; padding: 6px 12px; border-radius: 4px; cursor: pointer; }
        .grid { margin-top: 20px; width: 100%; border-collapse: collapse; }
        .grid th, .grid td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        .grid th { background-color: #003366; color: white; }
        .grade-badge { padding: 4px 8px; border-radius: 4px; font-weight: bold; color: white; background-color: #17a2b8; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <div class="header-bar">
                <h2>Student Marksheet Admin Panel</h2>
                <div>
                    Welcome, <asp:Label ID="lblAdminName" runat="server" Font-Bold="true"></asp:Label> |
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn-logout" OnClick="btnLogout_Click" CauseValidation="false" />
                </div>
            </div>

            <div class="form-row">
                <label>Marksheet ID:</label>
                <asp:TextBox ID="txtId" runat="server" Placeholder="(Auto / Enter ID for Search or Update)"></asp:TextBox>
            </div>

            <div class="form-row">
                <label>Student Name:</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>

            <div class="form-row">
                <label>Roll Number:</label>
                <asp:TextBox ID="txtRollNumber" runat="server"></asp:TextBox>
            </div>

            <div class="form-row">
                <label>Subject 1 Marks:</label>
                <asp:TextBox ID="txtSub1" runat="server"></asp:TextBox>
            </div>

            <div class="form-row">
                <label>Subject 2 Marks:</label>
                <asp:TextBox ID="txtSub2" runat="server"></asp:TextBox>
            </div>

            <div class="form-row">
                <label>Subject 3 Marks:</label>
                <asp:TextBox ID="txtSub3" runat="server"></asp:TextBox>
            </div>

            <div class="btn-group">
                <asp:Button ID="btnAdd" runat="server" Text="ADD" CssClass="btn btn-add" OnClick="btnAdd_Click" />
                <asp:Button ID="btnUpdate" runat="server" Text="UPDATE / MODIFY" CssClass="btn btn-update" OnClick="btnUpdate_Click" />
                <asp:Button ID="btnDelete" runat="server" Text="DELETE" CssClass="btn btn-delete" OnClick="btnDelete_Click" />
                <asp:Button ID="btnSearch" runat="server" Text="SEARCH" CssClass="btn btn-search" OnClick="btnSearch_Click" />
                <asp:Button ID="btnClear" runat="server" Text="CLEAR" CssClass="btn btn-clear" OnClick="btnClear_Click" />
            </div>

            <asp:Label ID="lblMessage" runat="server" Font-Bold="true"></asp:Label>

            <h3>All Student Marksheet Records</h3>
            <!-- GridView illustrating BoundField controls and TemplateField (Unbound/Custom) controls -->
            <asp:GridView ID="gvMarksheet" runat="server" CssClass="grid" AutoGenerateColumns="False">
                <Columns>
                    <%-- Bound Fields --%>
                    <asp:BoundField DataField="Id" HeaderText="ID" />
                    <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                    <asp:BoundField DataField="RollNumber" HeaderText="Roll No" />
                    <asp:BoundField DataField="Subject1" HeaderText="Subject 1" />
                    <asp:BoundField DataField="Subject2" HeaderText="Subject 2" />
                    <asp:BoundField DataField="Subject3" HeaderText="Subject 3" />
                    <asp:BoundField DataField="Total" HeaderText="Total Marks" />
                    <asp:BoundField DataField="Percentage" HeaderText="Percentage (%)" DataFormatString="{0:F2}" />
                    
                    <%-- TemplateField / Unbound Custom Control --%>
                    <asp:TemplateField HeaderText="Grade Status">
                        <ItemTemplate>
                            <span class="grade-badge">
                                <%# Eval("Grade") %>
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
