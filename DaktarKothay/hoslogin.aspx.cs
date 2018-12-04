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
    public partial class hoslogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            con.Open();
            string query = "select count(*) from [hospital] where email='" + TextUser.Text + "' and password='" + TextPass.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int output = Convert.ToInt32(cmd.ExecuteScalar());
            //Console.Write(output);
            if(output>=1)
            {
                string Name="";
                string query2 = "select hosName from [hospital] where email='" + TextUser.Text + "' and password='" + TextPass.Text + "'";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                                
                Session["user"] = TextUser.Text;
                Response.Redirect("hosadmin.aspx");
                Response.Write(Name);
            }

            else
            {
                Response.Write("Login Failed ");
                Label1.Text = "Wrong email or password!";
            }
                
            //con.Close();

        }
    }
}