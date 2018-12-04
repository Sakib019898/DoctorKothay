using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DaktarKothay
{
    public partial class medadmin : System.Web.UI.Page
    {
        public static String id, name;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["medadmin"] != null)
            {


                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());

                string query = "select * from [medicineshop] where medEmail='" + Session["medadmin"] + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                using (SqlDataReader oReader = cmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {
                        id = oReader["medId"].ToString();
                        name = oReader["medName"].ToString();
                        Label2.Text = id;
                    }

                    con.Close();
                }





                Labeluser.Text = "Hello " + name.ToString();
              
                SqlDataSource1.SelectCommand = "select [medEmail],[name],[price],[amount] from medicines inner join medicineshop on medicines.shopID=medicineshop.medID where medEmail='" + Session["medadmin"] + "'";
                GridView1.Visible = true;
            }
            if (Session["medadmin"] == null)
            {
               
            }
                
        }

        protected void Anchor_Click(Object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("medlogin.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            int amount= Convert.ToInt32(TextBox3.Text);

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            con.Open();
            string query = "UPDATE [medicines] SET price = '"+ TextBox2.Text + "', amount =" +amount + " WHERE name='"+TextBox1.Text+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            
            string query = "select * from [medicineshop] where medEmail='"+ Session["medadmin"] + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            using (SqlDataReader oReader = cmd.ExecuteReader())
            {
                while (oReader.Read())
                {
                     id= oReader["medId"].ToString();
                    name = oReader["medName"].ToString();
                    Label2.Text = id;
                }

                con.Close();
            }
            int idint = Convert.ToInt32(id);
            
            int amount = Convert.ToInt32(TextBox3.Text);
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());

            con2.Open();
            string query2 = "INSERT INTO [medicines](shopID,name,price,amount) values ("+idint+",'"+ TextBox1.Text + "','" + TextBox2.Text + "'," + amount + ")";
            SqlCommand cmd2 = new SqlCommand(query2, con2);
            cmd2.ExecuteNonQuery();
            con2.Close();
            
        }
    }


}