<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemeSkinDemo.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_3.ThemeSkinDemo" Theme="BlueTheme" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Unit 3 - Practical 2: Theme & Skin Demonstration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <!-- Header Label using SkinID="HeaderLabel" -->
            <asp:Label ID="lblTitle" runat="server" Text="Unit 3 - Practical 2: ASP.NET Theme & Skin" SkinID="HeaderLabel"></asp:Label>
            <hr />

            <p>
                <asp:Label ID="lblPrompt" runat="server" Text="Enter Your Name:"></asp:Label>
                <br />
                <!-- TextBox using default theme skin -->
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </p>

            <p>
                <!-- Button using default theme skin -->
                <asp:Button ID="btnSubmit" runat="server" Text="Submit Form" OnClick="btnSubmit_Click" />
            </p>

            <p>
                <asp:Label ID="lblOutput" runat="server"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
