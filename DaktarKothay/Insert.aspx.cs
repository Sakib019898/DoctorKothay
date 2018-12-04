using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using MySql.Data.MySqlClient;
using System.Data;
using System.Data.SqlClient;

namespace DaktarKothay
{
    public partial class Login1 : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection("Data Source = SAKIB_PC; Initial Catalog = Project; Integrated Security = True");

        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = G:\DaktarKothay0.3\DaktarKothay\DaktarKothay\App_Data\Doctorkothay.mdf; Integrated Security = True");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO hospital(hosName,hosLocation,email,password) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','123456789')";
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}