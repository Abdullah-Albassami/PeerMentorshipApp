using System;
using System.Configuration;
using System.Data.SqlClient;

namespace PeerMentorshipApp.Models
{
    public partial class Meeting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnScheduleMeeting_Click(object sender, EventArgs e)
        {
            string agenda = txtAgenda.Text;
            string dateTime = txtDateTime.Text;
            string connectionString = ConfigurationManager.ConnectionStrings["PeerMentorshipDB"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Meeting (dateTime, agenda, mentorID, menteeID) VALUES (@DateTime, @Agenda, @MentorID, @MenteeID)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@DateTime", dateTime);
                command.Parameters.AddWithValue("@Agenda", agenda);
                command.Parameters.AddWithValue("@MentorID", 1); // Replace with actual mentor ID
                command.Parameters.AddWithValue("@MenteeID", 1); // Replace with actual mentee ID

                connection.Open();
                command.ExecuteNonQuery();

                lblMessage.Text = "Meeting scheduled successfully!";
            }
        }
    }
}
