<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Meeting.aspx.cs" Inherits="PeerMentorshipApp.Models.Meeting" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Meeting Management</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Meeting Management</h2>
            <asp:Label ID="lblAgenda" runat="server" Text="Agenda:"></asp:Label>
            <asp:TextBox ID="txtAgenda" runat="server"></asp:TextBox><br />

            <asp:Label ID="lblDateTime" runat="server" Text="Date & Time:"></asp:Label>
            <asp:TextBox ID="txtDateTime" runat="server" Placeholder="yyyy-MM-dd HH:mm:ss"></asp:TextBox><br />

            <asp:Button ID="btnScheduleMeeting" runat="server" Text="Schedule Meeting" OnClick="btnScheduleMeeting_Click" />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>
