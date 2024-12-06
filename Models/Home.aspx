<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PeerMentorshipApp.Models.Home" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>PMU Mentoring Program</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: #f4f4f9;
        }

        .hero {
            position: relative;
            height: 100vh;
            background: url('pmulogo.png') no-repeat center center;
            background-size: cover;

            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }

        .hero-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 1;
        }

        .hero-content {
            position: relative;
            z-index: 2;
            text-align: center;
        }

        .hero h1 {
            font-size: 3rem;
            margin-bottom: 10px;
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 20px;
        }

        .hero .btn {
            padding: 10px 20px;
            font-size: 1rem;
            color: #fff;
            background: #f57c00;
            border: none;
            border-radius: 5px;
            text-transform: uppercase;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .hero .btn:hover {
            background: #e65100;
        }

        .navbar {
            position: absolute;
            top: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 50px;
            background: transparent;
            z-index: 3;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            font-size: 1rem;
            margin: 0 10px;
            transition: color 0.3s ease;
        }

        .navbar a:hover {
            color: #f57c00;
        }

        .navbar h2 {
            font-size: 1.5rem;
            font-weight: bold;
            color: #fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="hero">
            <div class="hero-overlay"></div>
            <div class="navbar">
                <h2>PMU Mentoring Program</h2>
                <div>
                    <a href="Home.aspx">Home</a>
                    <a href="Mentoring.aspx">Mentoring</a>
                </div>
            </div>
            <div class="hero-content">
                <h1>Welcome to PMU Mentoring Program</h1>
                <p>Connect and Learn in a Supportive Community</p>
                <a href="Mentee.aspx" class="btn">Request Mentoring</a>
            </div>
        </div>

        <asp:Label ID="lblRole" runat="server" style="display:none;"></asp:Label>
        <asp:Label ID="lblUsername" runat="server" style="display:none;"></asp:Label>
        <asp:Panel ID="mentorPanel" runat="server" Visible="false"></asp:Panel>
        <asp:Panel ID="menteePanel" runat="server" Visible="false"></asp:Panel>
    </form>
</body>
</html>
