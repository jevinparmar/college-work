-- SQL Script for Unit 4 Practicals
-- Create Database
CREATE DATABASE Unit4DB;
GO

USE Unit4DB;
GO

-- 1. Users Table (for Signup, Login, Password Change)
CREATE TABLE Users (
    UserId INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Password VARCHAR(100) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE()
);
GO

-- 2. Students Table (for Student Registration)
CREATE TABLE Students (
    StudentId INT IDENTITY(1,1) PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Mobile VARCHAR(15) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Course VARCHAR(50) NOT NULL,
    Address VARCHAR(200) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Password VARCHAR(100) NOT NULL,
    RegisteredAt DATETIME DEFAULT GETDATE()
);
GO

-- 3. Employees Table (for Employee Recruitment CRUD using DataReader)
CREATE TABLE Employees (
    EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Mobile VARCHAR(15) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Qualification VARCHAR(50) NOT NULL,
    Experience VARCHAR(20) NOT NULL,
    City VARCHAR(50) NOT NULL
);
GO

-- 4. Admins Table (for Admin Login)
CREATE TABLE Admins (
    AdminId INT IDENTITY(1,1) PRIMARY KEY,
    Username VARCHAR(50) NOT NULL UNIQUE,
    Password VARCHAR(50) NOT NULL
);
GO

-- Insert default admin account
INSERT INTO Admins (Username, Password) VALUES ('admin', 'admin123');
GO

-- 5. StudentMarks Table (for Student Marksheet Admin CRUD)
CREATE TABLE StudentMarks (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    RollNumber VARCHAR(20) NOT NULL,
    Subject1 INT NOT NULL,
    Subject2 INT NOT NULL,
    Subject3 INT NOT NULL,
    Total INT NOT NULL,
    Percentage DECIMAL(5,2) NOT NULL,
    Grade VARCHAR(10) NOT NULL
);
GO
