<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebConfigDemo.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_3.WebConfigDemo" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Unit 3 - Practical 6: Web.config Demonstration</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #f8f9fa; margin: 20px; }
        .card { background: white; border: 1px solid #17a2b8; padding: 20px; border-radius: 6px; width: 550px; }
        h2 { color: #117a8b; margin-top: 0; }
        .code-box { background-color: #e9ecef; border: 1px solid #ced4da; padding: 10px; border-radius: 4px; font-family: monospace; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <h2>Unit 3 - Practical 6: Web.config Configuration Reader</h2>
            <hr />

            <h3>1. Reading AppSettings</h3>
            <p><strong>Key:</strong> CollegeName</p>
            <p><strong>Value:</strong> <asp:Label ID="lblCollegeName" runat="server" Font-Bold="true" ForeColor="DarkBlue"></asp:Label></p>

            <h3>2. Reading Connection Strings</h3>
            <p><strong>Name:</strong> MyConnection</p>
            <p><strong>Provider:</strong> <asp:Label ID="lblProvider" runat="server" Font-Bold="true"></asp:Label></p>
            <p><strong>Safe Connection String:</strong></p>
            <div class="code-box">
                <asp:Label ID="lblConnectionString" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
