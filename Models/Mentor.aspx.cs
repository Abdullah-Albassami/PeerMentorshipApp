using System;
using System.Configuration;
using System.Data.SqlClient;

namespace PeerMentorshipApp.Models
{
    public partial class Mentor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CheckExistingExpertise();
            }
        }

        private void CheckExistingExpertise()
        {
            int userID = Convert.ToInt32(Session["UserID"]); // Assume userID is stored in the session after login
            string connectionString = ConfigurationManager.ConnectionStrings["PeerMentorshipDB"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT expertise FROM Mentor WHERE userID = @UserID";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@UserID", userID);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();
                    string expertise = reader["expertise"].ToString();

                    if (!string.IsNullOrEmpty(expertise))
                    {
                        // Redirect to another page if expertise already exists
                        Response.Redirect("Dashboard.aspx"); // Replace "Dashboard.aspx" with the target page
                    }
                }
            }
        }

        protected void btnAddExpertise_Click(object sender, EventArgs e)
        {
            string expertise = txtExpertise.Text;
            int userID = Convert.ToInt32(Session["UserID"]); // Assume userID is stored in the session after login

            string connectionString = ConfigurationManager.ConnectionStrings["PeerMentorshipDB"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "UPDATE Mentor SET expertise = @Expertise WHERE userID = @UserID";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Expertise", expertise);
                command.Parameters.AddWithValue("@UserID", userID);

                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    lblMessage.Text = "Expertise updated successfully!";
                }
                else
                {
                    lblMessage.Text = "Failed to update expertise. Please try again.";
                }
            }
        }
    }
}
