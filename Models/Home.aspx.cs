using System;
using System.Configuration;
using System.Data.SqlClient;

namespace PeerMentorshipApp.Models
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUserData();
            }
        }

        private void LoadUserData()
        {
            // Retrieve session variables
            int userID = Convert.ToInt32(Session["UserID"]);
            string role = Session["Role"]?.ToString();

            if (role == null)
            {
                // Redirect to login if session expired
                Response.Redirect("UserAccount.aspx");
            }

            lblRole.Text = role;

            string connectionString = ConfigurationManager.ConnectionStrings["PeerMentorshipDB"].ConnectionString;

            // Retrieve and display the username
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT username FROM UserAccount WHERE userID = @UserID";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@UserID", userID);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();
                    lblUsername.Text = reader["username"].ToString();
                }
            }

            // Show options based on the user's role
            if (role == "Mentor")
            {
                mentorPanel.Visible = true;
            }
            else if (role == "Mentee")
            {
                menteePanel.Visible = true;
            }
        }
    }
}
