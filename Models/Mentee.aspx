<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mentee.aspx.cs" Inherits="PeerMentorshipApp.Models.Mentee" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Mentee Management</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Mentee Management</h2>
            <asp:Label ID="lblMajor" runat="server" Text="Major:"></asp:Label>
            <asp:TextBox ID="txtMajor" runat="server"></asp:TextBox><br />

            <asp:Button ID="btnUpdateMajor" runat="server" Text="Update Major" OnClick="btnUpdateMajor_Click" />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>
