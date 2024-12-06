<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserAccount.aspx.cs" Inherits="PeerMentorshipApp.Models.UserAccount" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>User Login</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #000;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }

        .container {
            width: 380px;
            padding: 30px 25px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.5);
            text-align: center;
            color: #000;
        }

        .container h2 {
            font-size: 2rem;
            font-weight: bold;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-group label {
            font-size: 0.9rem;
            font-weight: 600;
            display: block;
            margin-bottom: 8px;
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
            box-sizing: border-box;
        }

        .form-group input:focus {
            outline: none;
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .form-links {
            margin-bottom: 20px;
            text-align: right;
        }

        .form-links a {
            font-size: 0.8rem;
            color: #007bff;
            text-decoration: none;
        }

        .form-links a:hover {
            text-decoration: underline;
        }

        .btn {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 5px;
            background: linear-gradient(90deg, #007bff, #00bcd4);
            color: #fff;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s;
        }

        .btn:hover {
            background: linear-gradient(90deg, #0056b3, #0097a7);
        }

        .register-link {
            margin-top: 15px;
            font-size: 0.9rem;
        }

        .register-link a {
            color: #007bff;
            text-decoration: none;
        }

        .register-link a:hover {
            text-decoration: underline;
        }

        nav {
            position: absolute;
            top: 0;
            width: 100%;
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            text-align: center;
        }

        nav a {
            color: #007bff;
            text-decoration: none;
            margin: 0 10px;
            font-size: 0.9rem;
        }

        nav a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <nav>
        <a href="Home.aspx">Home</a>
        <a href="Forum.aspx">Forum</a>
        <a href="Profile.aspx">Profile</a>
    </nav>
    <form id="form1" runat="server">
        <div class="container">
            <h2>LOGIN</h2>
            <div class="form-group">
                <label for="txtUsername">Email</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPassword">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
            </div>
            <div class="form-links">
                <a href="ForgotPassword.aspx">Forgot password?</a>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="LOGIN" CssClass="btn" OnClick="btnLogin_Click" />
            <div class="register-link">
                <span>Don't have an account yet? <a href="Register.aspx">Register</a></span>
            </div>
        </div>
    </form>
</body>
</html>
