<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_1.Blog" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Blog UI</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #343a40;
            color: #ffffff;
            padding: 20px 0;
            text-align: center;
        }
        nav {
            display: flex;
            justify-content: center;
            background-color: #495057;
            padding: 10px;
        }
        nav a {
            color: #ffffff;
            margin: 0 15px;
            text-decoration: none;
            font-weight: 600;
        }
        nav a:hover {
            text-decoration: underline;
        }
        .main-content {
            max-width: 1000px;
            margin: 30px auto;
            padding: 0 15px;
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 25px;
        }
        .featured-post {
            background: #ffffff;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            margin-bottom: 25px;
        }
        .img-placeholder {
            background-color: #e9ecef;
            height: 250px;
            border-radius: 6px;
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #6c757d;
            font-size: 18px;
            font-weight: bold;
        }
        .post-title {
            font-size: 24px;
            color: #333;
            margin: 10px 0;
        }
        .meta-info {
            font-size: 12px;
            color: #888888;
            margin-bottom: 15px;
        }
        .description {
            font-size: 14px;
            color: #555555;
            line-height: 1.6;
        }
        .btn {
            display: inline-block;
            background-color: #007bff;
            color: white;
            padding: 8px 16px;
            border-radius: 4px;
            text-decoration: none;
            font-size: 13px;
            font-weight: bold;
            margin-top: 10px;
            border: none;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .blog-grid {
            display: grid;
            grid-template-columns: 1fr;
            gap: 20px;
        }
        .blog-card {
            background: #ffffff;
            border-radius: 8px;
            padding: 15px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.05);
        }
        .card-img-placeholder {
            background-color: #e9ecef;
            height: 150px;
            border-radius: 6px;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #6c757d;
            font-size: 14px;
            font-weight: bold;
        }
        .sidebar {
            background: #ffffff;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            align-self: start;
        }
        .sidebar h3 {
            margin-top: 0;
            border-bottom: 2px solid #007bff;
            padding-bottom: 8px;
        }
        .category-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .category-list li {
            margin: 10px 0;
        }
        .category-list li a {
            color: #333333;
            text-decoration: none;
            font-size: 14px;
        }
        .category-list li a:hover {
            color: #007bff;
            text-decoration: underline;
        }
        footer {
            background-color: #343a40;
            color: #ffffff;
            text-align: center;
            padding: 20px 0;
            margin-top: 40px;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1>Computer Science Blog</h1>
            <p>Your portal for programming practicals and tutorials</p>
        </header>

        <nav>
            <a href="#">Home</a>
            <a href="#">Articles</a>
            <a href="#">Units</a>
            <a href="#">Lab Syllabus</a>
        </nav>

        <div class="main-content">
            <div>
                <div class="featured-post">
                    <div class="img-placeholder">Featured Post: Getting Started with ASP.NET</div>
                    <div class="post-title">Understanding ASP.NET Web Forms Architecture</div>
                    <div class="meta-info">Posted by <strong>Admin</strong> on <strong>July 24, 2026</strong></div>
                    <p class="description">ASP.NET Web Forms lets you build dynamic websites using a familiar office-style drag-and-drop, event-driven model. Learn about code-behind, server controls, and page lifecycle basics.</p>
                    <asp:Button ID="btnReadFeatured" runat="server" Text="Read More" CssClass="btn" />
                </div>

                <div class="blog-grid">
                    <div class="blog-card">
                        <div class="card-img-placeholder">Image Placeholder 1</div>
                        <div class="post-title" style="font-size:18px;">ASP.NET Server Controls Explained</div>
                        <div class="meta-info">Posted by <strong>John Doe</strong> on <strong>July 20, 2026</strong></div>
                        <p class="description" style="font-size:13px;">A deep dive into common ASP.NET Web Controls like TextBox, Label, DropDownList, and Button with server-side executions.</p>
                        <asp:Button ID="btnRead1" runat="server" Text="Read More" CssClass="btn" />
                    </div>

                    <div class="blog-card">
                        <div class="card-img-placeholder">Image Placeholder 2</div>
                        <div class="post-title" style="font-size:18px;">Understanding Client-Side Validation</div>
                        <div class="meta-info">Posted by <strong>Jane Smith</strong> on <strong>July 18, 2026</strong></div>
                        <p class="description" style="font-size:13px;">Using ASP.NET validation controls like RequiredFieldValidator, CompareValidator, and RangeValidator to prevent form submissions with errors.</p>
                        <asp:Button ID="btnRead2" runat="server" Text="Read More" CssClass="btn" />
                    </div>

                    <div class="blog-card">
                        <div class="card-img-placeholder">Image Placeholder 3</div>
                        <div class="post-title" style="font-size:18px;">State Management in Web Applications</div>
                        <div class="meta-info">Posted by <strong>Professor X</strong> on <strong>July 15, 2026</strong></div>
                        <p class="description" style="font-size:13px;">Exploring Session, Cookies, ViewState, and QueryStrings to persist user data between HTTP postback events.</p>
                        <asp:Button ID="btnRead3" runat="server" Text="Read More" CssClass="btn" />
                    </div>
                </div>
            </div>

            <div class="sidebar">
                <h3>Categories</h3>
                <ul class="category-list">
                    <li><a href="#">ASP.NET Web Forms</a></li>
                    <li><a href="#">C# Programming</a></li>
                    <li><a href="#">Database Connectivity</a></li>
                    <li><a href="#">Web Security</a></li>
                    <li><a href="#">AJAX Services</a></li>
                </ul>
            </div>
        </div>

        <footer>
            <p>&copy; 2026 College CS Department. All rights reserved.</p>
        </footer>
    </form>
</body>
</html>
