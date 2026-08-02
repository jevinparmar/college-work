<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StateManagement.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_3.StateManagement" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Unit 3 - Practical 4: State Management</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #f8f9fa; margin: 20px; }
        .box { background: white; border: 1px solid #ddd; padding: 20px; border-radius: 6px; margin-bottom: 20px; width: 500px; }
        .box h3 { margin-top: 0; color: #0056b3; }
        .btn { padding: 6px 12px; margin-right: 5px; cursor: pointer; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Unit 3 - Practical 4: State Management (Cookies, Session, Application)</h2>

        <!-- Cookie Section -->
        <div class="box">
            <h3>1. Cookie Management</h3>
            <asp:TextBox ID="txtCookieInput" runat="server" Placeholder="Enter Cookie Value"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnSetCookie" runat="server" Text="Set Cookie" CssClass="btn" OnClick="btnSetCookie_Click" />
            <asp:Button ID="btnGetCookie" runat="server" Text="Get Cookie" CssClass="btn" OnClick="btnGetCookie_Click" />
            <br /><br />
            <asp:Label ID="lblCookieResult" runat="server" ForeColor="DarkBlue" Font-Bold="true"></asp:Label>
        </div>

        <!-- Session Section -->
        <div class="box">
            <h3>2. Session State Management</h3>
            <asp:TextBox ID="txtSessionInput" runat="server" Placeholder="Enter Session Value"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnSetSession" runat="server" Text="Set Session" CssClass="btn" OnClick="btnSetSession_Click" />
            <asp:Button ID="btnGetSession" runat="server" Text="Get Session" CssClass="btn" OnClick="btnGetSession_Click" />
            <br /><br />
            <asp:Label ID="lblSessionResult" runat="server" ForeColor="DarkGreen" Font-Bold="true"></asp:Label>
        </div>

        <!-- Application Section -->
        <div class="box">
            <h3>3. Application State Management</h3>
            <asp:TextBox ID="txtAppInput" runat="server" Placeholder="Enter Application Value"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnSetApp" runat="server" Text="Set Application Value" CssClass="btn" OnClick="btnSetApp_Click" />
            <asp:Button ID="btnGetApp" runat="server" Text="Get Application Value" CssClass="btn" OnClick="btnGetApp_Click" />
            <br /><br />
            <asp:Label ID="lblAppResult" runat="server" ForeColor="DarkRed" Font-Bold="true"></asp:Label>
        </div>
    </form>
</body>
</html>
