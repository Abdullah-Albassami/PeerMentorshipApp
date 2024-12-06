<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mentor.aspx.cs" Inherits="PeerMentorshipApp.Models.Mentor" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Mentor Management</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Mentor Management</h2>
            <asp:Label ID="lblExpertise" runat="server" Text="Expertise:"></asp:Label>
            <asp:TextBox ID="txtExpertise" runat="server"></asp:TextBox><br />

            <asp:Button ID="btnAddExpertise" runat="server" Text="Add Expertise" OnClick="btnAddExpertise_Click" />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>
