# ASP.NET Web Forms Practicals

This repository contains independent practical programs for the college subject **ASP.NET Web Forms**. It is organized into units (Unit 1 and Unit 2).

## Subject Name
- **ASP.NET Web Forms (with C#)**

## Technology Used
- **Framework**: .NET Framework (ASP.NET Web Forms)
- **Language**: C# (C-Sharp)
- **Design**: Plain HTML & internal CSS (No external frameworks or libraries)

## Folder Structure

```
ASP.NET-WebForms-Practicals/
├── README.md
├── .gitignore
├── Unit-1/
│   ├── README.md
│   ├── 01-Login-UI/
│   ├── 02-Registration-UI/
│   ├── 03-Contact-Us-UI/
│   ├── 04-Blog-UI/
│   └── 05-Change-Password-UI/
└── Unit-2/
    ├── README.md
    ├── 06-Static-Login/
    ├── 07-Student-Admission/
    ├── 08-Student-Marksheet/
    ├── 09-Simple-Calculator/
    └── 10-Hardware-Billing/
```

## Important Note
ASP.NET Web Forms is a technology based on the classic **.NET Framework**. It requires **Windows** and **IIS / IIS Express** to run natively. While you can write, review, and store these C# codebase files on Linux (Fedora), you will need a Windows environment to run them.

## How to Run in Visual Studio Community (Windows)

1. **Create an Empty Project**:
   - Open Visual Studio on Windows.
   - Create a new project and select **ASP.NET Web Application (.NET Framework)**.
   - Choose **Empty** as the template, keeping the project layout clear of default templates.
2. **Import Practicals**:
   - Copy any program folder (e.g., `01-Login-UI`) into your Visual Studio project directory.
   - Include the files in the project.
3. **Execute**:
   - Right-click on the `.aspx` page in the Solution Explorer.
   - Select **View in Browser** or press **Ctrl + F5** to start IIS Express.

## Unit Program Lists

### Unit-1: Introduction and Web Server Controls
- **01-Login-UI**: Login portal interface mockup.
- **02-Registration-UI**: Basic course registration form layout.
- **03-Contact-Us-UI**: Student query contact form.
- **04-Blog-UI**: Modern styled listing page with featured/side elements.
- **05-Change-Password-UI**: Portal password update interface.

### Unit-2: Validation Controls and Rich Controls
- **06-Static-Login**: Compares entered username/password with static data.
- **07-Student-Admission**: Detailed registration with standard validators and input summary.
- **08-Student-Marksheet**: Multi-page application storing records in `Session` and rendering custom results on redirect.
- **09-Simple-Calculator**: Numeric validation with safe type-conversion and zero-division protection.
- **10-Hardware-Billing**: Dynamically displays item SVG vectors and handles billing updates via `AutoPostBack` triggers.

---
*Author: College Student Portfolio Placeholder*
