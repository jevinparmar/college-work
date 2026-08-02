<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemeSelector.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_3.ThemeSelector" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Unit 3 - Practical 10: Dynamic Theme Selector</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <asp:Label ID="lblTitle" runat="server" Text="Unit 3 - Practical 10: User Theme Selection" SkinID="HeaderLabel"></asp:Label>
            <hr />

            <p>
                <asp:Label ID="lblSelect" runat="server" Text="Select Theme: "></asp:Label>
                <asp:DropDownList ID="ddlTheme" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTheme_SelectedIndexChanged">
                    <asp:ListItem Text="Blue Theme" Value="BlueTheme"></asp:ListItem>
                    <asp:ListItem Text="Green Theme" Value="GreenTheme"></asp:ListItem>
                    <asp:ListItem Text="Dark Theme" Value="DarkTheme"></asp:ListItem>
                </asp:DropDownList>
            </p>

            <p>
                <asp:Label ID="lblSample" runat="server" Text="Sample Label with Current Theme"></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="txtSample" runat="server" Text="Sample TextBox"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="btnSample" runat="server" Text="Sample Button" />
            </p>

            <p>
                <asp:Label ID="lblStatus" runat="server" Font-Bold="true"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
