using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment7
{
    public partial class apply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // CUSTOM VALIDATOR
        protected void passwordValidator(object sender, ServerValidateEventArgs e)
        {
            string pwd1 = pwdInput.Text;
            string pwd2 = confirmPwdInput.Text;
            if (pwd1.Equals(pwd2))
            {
                e.IsValid = true;
            }
            else
            {
                e.IsValid = false;
            }
        }

        protected void btnSubmit(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // CREATE CONNECTION STRING
                string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;

                // CREATE SQL CONNECTION
                SqlConnection con = new SqlConnection(connectionString);

                // OPEN THE CONNECTION
                con.Open();

                // GET VALUES FROM THE INPUT SECTION
                string getFullname = fullnameInput.Text;
                string getUsername = usernameInput.Text;
                string getPwd = confirmPwdInput.Text;
                string getRole = radioButtonList.SelectedItem.ToString();
                string getTshirt = tshirtInput.Text;
                string getEmail = emailInput.Text;

                // CREATE A SQL QUERY
                String query = "INSERT INTO users(fullname, username, pwd, role, tshirtNum, email) VALUES (@getFullname, @getUsername, @getPwd, @getRole, @getTshirt, @getEmail)";

                // SQL COMMAND
                SqlCommand cmd = new SqlCommand(query, con);

                // ADD THE VALUES INTO EACH PARAMETER
                cmd.Parameters.AddWithValue("@getFullname", getFullname);
                cmd.Parameters.AddWithValue("@getUserName", getUsername);
                cmd.Parameters.AddWithValue("@getPwd", getPwd);
                cmd.Parameters.AddWithValue("@getRole", getRole);
                cmd.Parameters.AddWithValue("@getTshirt", getTshirt);
                cmd.Parameters.AddWithValue("@getEmail", getEmail);

                int value = cmd.ExecuteNonQuery();

                if (value == 1)
                {
                    result.Text = "Data successfully inserted into database";
                }

                fullnameInput.Text = "";
                usernameInput.Text = "";
                pwdInput.Text = "";
                confirmPwdInput.Text = "";
                tshirtInput.Text = "";
                emailInput.Text = "";

                // CLOSE THE CONNECTION
                con.Close();


            }
        }
    }
}