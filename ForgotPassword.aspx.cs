using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCartSoumodip
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        string _myConnectionString = @"data source = ndamssql\sqlilearn; user id = sqluser; password = sqluser; initial catalog = training_19sep18_pune;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(_myConnectionString);
            // cmd.CommandText = "ForgotPassword";

            // cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            string logindetails = "select * from Signup_details";
            SqlCommand cmd = new SqlCommand(logindetails, con);

            SqlDataReader dr = cmd.ExecuteReader();

            //cmd.Parameters.AddWithValue("@username", txtname.Text);
            //cmd.Parameters.AddWithValue("@password",txtPassword1.Text);
            //cmd.Parameters.AddWithValue("@Securityqtn", DropDownSecurity.SelectedItem.Text);
            //cmd.Parameters.AddWithValue("@answer",txtAnser1.Text);



            if (dr.Read())
            {
                if (txtname.Text == dr["Name"].ToString() && DropDownSecurity.SelectedItem.Text == dr["securityqtn"].ToString() && txtAnser1.Text == dr["answer"].ToString())
                {
                    txtPassword1.Text = dr["Password1"].ToString();
                }

                else
                {
                    lbl123.Text = "Invalid username or password";
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }
    }
}