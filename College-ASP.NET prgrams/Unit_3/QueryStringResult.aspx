<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryStringResult.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_3.QueryStringResult" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>QueryString Result Page</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #f8f9fa; margin: 20px; }
        .card { background: white; border: 1px solid #28a745; padding: 20px; border-radius: 6px; width: 450px; }
        h3 { color: #155724; margin-top: 0; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <h3>QueryString Data Received</h3>
            <p>
                <strong>Student Name:</strong> <asp:Label ID="lblName" runat="server" ForeColor="DarkGreen"></asp:Label>
            </p>
            <p>
                <strong>Course:</strong> <asp:Label ID="lblCourse" runat="server" ForeColor="DarkGreen"></asp:Label>
            </p>
            <br />
            <a href="ViewStateDemo.aspx">&laquo; Go Back to ViewStateDemo.aspx</a>
        </div>
    </form>
</body>
</html>
