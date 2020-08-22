using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment7
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit(object sender, EventArgs e)
        {
            
        }

        protected void btnAdmin(object sender, EventArgs e)
        {
            Response.Redirect("adminLogin.aspx");
        }

        protected void btnMember(object sender, EventArgs e)
        {
            Response.Redirect("memberLogin.aspx");
        }
    }
}