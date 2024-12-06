using System;
using System.Data.SqlClient;
using System.Configuration;

namespace PeerMentorshipApp.Models
{
    public partial class UserAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any page load logic if needed
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text; // Captures email entered in the TextBox
            string password = txtPassword.Text; // Captures password entered in the TextBox

            string connectionString = ConfigurationManager.ConnectionStrings["PeerMentorshipDB"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT userID, role FROM UserAccount WHERE username = @Username AND password = @Password";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Password", password);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();

                    // Store user details in session
                    Session["UserID"] = reader["userID"];
                    Session["Role"] = reader["role"];

                    // Redirect based on user role
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    // Provide user feedback if login fails
                    Response.Write("<script>alert('Invalid credentials!');</script>");
                }
            }
        }
    }
}
