<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSSDemo.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_3.CSSDemo" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Unit 3 - Practical 1: CSS Demonstration</title>
    <!-- External CSS -->
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <!-- Internal CSS -->
    <style type="text/css">
        .internal-card {
            background-color: #e2e3e5;
            border: 2px solid #383d41;
            border-radius: 8px;
            padding: 20px;
            margin: 15px 0;
        }
        .internal-heading {
            color: #383d41;
            font-size: 20px;
            margin-top: 0;
        }
        .internal-para {
            color: #1b1e21;
            font-style: italic;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Unit 3 - Practical 1: Cascading Style Sheets in ASP.NET</h2>
        
        <!-- Section 1: External CSS -->
        <div class="external-card">
            <h3 class="external-heading">1. External CSS Example</h3>
            <p>This section is styled using an external stylesheet located in <code>css/style.css</code>.</p>
            <asp:Button ID="btnExternal" runat="server" Text="ASP.NET Control styled by External CSS" CssClass="external-btn" OnClick="btnExternal_Click" />
            <br /><br />
            <asp:Label ID="lblExternalMsg" runat="server" ForeColor="Green"></asp:Label>
        </div>

        <!-- Section 2: Internal CSS -->
        <div class="internal-card">
            <h3 class="internal-heading">2. Internal CSS Example</h3>
            <p class="internal-para">This paragraph uses internal CSS defined inside the <code>&lt;style&gt;</code> block in the head tag.</p>
            <button type="button" class="internal-heading">HTML Button with Internal CSS</button>
        </div>

        <!-- Section 3: Inline CSS -->
        <div style="background-color: #d4edda; border: 2px solid #28a745; padding: 20px; border-radius: 8px; margin: 15px 0;">
            <h3 style="color: #155724; margin-top: 0;">3. Inline CSS Example</h3>
            <p style="color: #155724; font-weight: bold;">This card uses direct inline CSS attributes (style="...").</p>
            <asp:TextBox ID="txtInline" runat="server" Style="border: 2px solid #28a745; padding: 8px; border-radius: 4px;" Text="Styled Inline TextBox"></asp:TextBox>
        </div>
    </form>
</body>
</html>
