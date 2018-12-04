using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace DaktarKothay
{
    public partial class medlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            con.Open();
            string query = "select count(*) from [medicineshop] where medEmail='" + TextUser.Text + "' and password='" + TextPass.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int output = Convert.ToInt32(cmd.ExecuteScalar());
            //Console.Write(output);
            if (output >= 1)
            {
                Session["medadmin"] = TextUser.Text;
                Response.Redirect("medadmin.aspx");

                //Response.Write("");
            }

            else
            {
                Response.Write("Login Failed ");
                Label1.Text = "Wrong email or password!";
            }

        }
    }
}