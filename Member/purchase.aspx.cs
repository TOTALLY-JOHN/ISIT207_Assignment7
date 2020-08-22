using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment7.Member
{
    public partial class purchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void display_Click(object sender, EventArgs e)
        {
            showData();
        }

        protected void showData()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string query1 = "USE userDB";
            string query2 = "SELECT purchaseId, userName, tshirtName, tshirtNum, tshirtPrice, paymentStatus FROM purchase WHERE userName=@userName";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.ExecuteNonQuery();
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.Parameters.AddWithValue("@userName", usernameInput.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd2);
            using (DataTable dt = new DataTable())
            {
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            // Create connection
            string connectionString1 = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            
            // SQL connection
            SqlConnection con1 = new SqlConnection(connectionString1);

            // Open the connection
            con1.Open();

            // Query1
            string query1 = "USE userDB";
            string query2 = "SELECT tshirtPrice FROM products";

            // Declare ArrayList
            ArrayList priceList = new ArrayList();

            // SQL COMMAND
            SqlCommand cmd1 = new SqlCommand(query1, con1);
            SqlCommand cmd2 = new SqlCommand(query2, con1);

            // EXECUTE THE FIRST QUERY
            cmd1.ExecuteNonQuery();

            // Open the reader
            SqlDataReader reader1 = cmd2.ExecuteReader();

            // GET THE VALUES
            while(reader1.Read())
            {
                double priceValue = Convert.ToDouble(reader1["tshirtPrice"].ToString());
                priceList.Add(priceValue);
            }

            // Close
            reader1.Close();
            con1.Close();

            //create connection
            string connectionString2 = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;

            //sql connection
            SqlConnection con2 = new SqlConnection(connectionString2);

            //open
            con2.Open();


            for (int i = 0; i < 3; i++)
            {
                if(checkList.Items[i].Selected)
                {
                    string getProductName = checkList.Items[i].ToString();
                    
                    if(i == 0)
                    {
                        //create sql query
                        String query3 = "INSERT INTO purchase VALUES (@userName, @tshirtName, @tshirtNum, @tshirtPrice, @paymentStatus)";

                        //add data
                        SqlCommand cmd3 = new SqlCommand(query3, con2);
                        string getUsername = usernameInput.Text;

                        int q1 = Convert.ToInt32(dropdownList1.SelectedValue.ToString());
                        cmd3.Parameters.AddWithValue("@userName", getUsername);
                        cmd3.Parameters.AddWithValue("@tshirtName", getProductName);
                        cmd3.Parameters.AddWithValue("@tshirtNum", q1);
                        double totalPrice = Convert.ToDouble(priceList[i].ToString()) * q1;
                        cmd3.Parameters.AddWithValue("@tshirtPrice", totalPrice);
                        cmd3.Parameters.AddWithValue("@paymentStatus", "Not paid");
                        int value = cmd3.ExecuteNonQuery();
                        if(value == 1)
                        {
                            result.Text = "Data successfully inserted into the database!";
                        }
                    }
                    else if(i == 1)
                    {
                        //create sql query
                        String query3 = "INSERT INTO purchase VALUES (@userName, @tshirtName, @tshirtNum, @tshirtPrice, @paymentStatus)";

                        //add data
                        SqlCommand cmd3 = new SqlCommand(query3, con2);
                        string getUsername = usernameInput.Text;

                        int q2 = Convert.ToInt32(dropdownList2.SelectedValue.ToString());
                        cmd3.Parameters.AddWithValue("@userName", getUsername);
                        cmd3.Parameters.AddWithValue("@tshirtName", getProductName);
                        cmd3.Parameters.AddWithValue("@tshirtNum", q2);
                        double totalPrice = Convert.ToDouble(priceList[i].ToString()) * q2;
                        cmd3.Parameters.AddWithValue("@tshirtPrice", totalPrice);
                        cmd3.Parameters.AddWithValue("@paymentStatus", "Not paid");
                        int value = cmd3.ExecuteNonQuery();
                        if (value == 1)
                        {
                            result.Text = "Data successfully inserted into the database!";
                        }
                    }
                    else if(i == 2)
                    {
                        //create sql query
                        String query3 = "INSERT INTO purchase VALUES (@userName, @tshirtName, @tshirtNum, @tshirtPrice, @paymentStatus)";

                        //add data
                        SqlCommand cmd3 = new SqlCommand(query3, con2);
                        string getUsername = usernameInput.Text;

                        int q3 = Convert.ToInt32(dropdownList3.SelectedValue.ToString());
                        cmd3.Parameters.AddWithValue("@userName", getUsername);
                        cmd3.Parameters.AddWithValue("@tshirtName", getProductName);
                        cmd3.Parameters.AddWithValue("@tshirtNum", q3);
                        double totalPrice = Convert.ToDouble(priceList[i].ToString()) * q3;
                        cmd3.Parameters.AddWithValue("@tshirtPrice", totalPrice);
                        cmd3.Parameters.AddWithValue("@paymentStatus", "Not paid");
                        int value = cmd3.ExecuteNonQuery();
                        if (value == 1)
                        {
                            result.Text = "Data successfully inserted into the database!";
                        }
                    }
                }
            }

            //close
            con2.Close();
        }

    }

}