using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment7.Admin
{
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                showData();
            }
        }

        protected void showData()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string query1 = "USE userDB";
            string query2 = "SELECT purchaseId, userName, tshirtName, tshirtNum, tshirtPrice, paymentStatus FROM purchase";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.ExecuteNonQuery();
            SqlCommand cmd2 = new SqlCommand(query2, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd2);
            using (DataTable dt = new DataTable())
            {
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.showData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow rows = GridView1.Rows[e.RowIndex];
            int getId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            /*string getUserName = (rows.Cells[1].Controls[0] as TextBox).Text;
            string getTshirtName = (rows.Cells[2].Controls[0] as TextBox).Text;
            string getTshirtNum = (rows.Cells[3].Controls[0] as TextBox).Text;
            string getTshirtPrice = (rows.Cells[4].Controls[0] as TextBox).Text;*/
            string getStatus = (rows.Cells[5].Controls[0] as TextBox).Text;
            string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string query1 = "USE userDB";
            string query2 = "UPDATE purchase SET paymentStatus = @paymentStatus WHERE purchaseId = @purchaseId";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.ExecuteNonQuery();
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.Parameters.AddWithValue("@paymentStatus", getStatus);
            cmd2.Parameters.AddWithValue("@purchaseId", getId);
            cmd2.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            this.showData();
        }
    }
}