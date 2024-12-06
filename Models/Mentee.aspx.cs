using System;
using System.Configuration;
using System.Data.SqlClient;

namespace PeerMentorshipApp.Models
{
    public partial class Mentee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnUpdateMajor_Click(object sender, EventArgs e)
        {
            string major = txtMajor.Text;
            string connectionString = ConfigurationManager.ConnectionStrings["PeerMentorshipDB"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "UPDATE Mentee SET major = @Major WHERE menteeID = @MenteeID";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Major", major);
                command.Parameters.AddWithValue("@MenteeID", 1); // Replace with the actual mentee ID

                connection.Open();
                command.ExecuteNonQuery();

                lblMessage.Text = "Major updated successfully!";
            }
        }
    }
}
