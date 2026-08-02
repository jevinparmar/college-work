<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Unit_3/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ASP.NET_WebForms_Practicals.Unit_3.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Welcome to the Home Page</h2>
    <p>This content page is dynamically rendered inside the <code>MainContent</code> placeholder of <strong>Site.Master</strong>.</p>
    <p>Master pages allow you to create a consistent layout for all the pages in your ASP.NET application.</p>
</asp:Content>
