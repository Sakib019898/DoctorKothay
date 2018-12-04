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
    public partial class hosadmin : System.Web.UI.Page
    {
        public static String id, name;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"]!=null)
            {




                Labeluser.Text = "Hello " + Session["user"].ToString();
            }
        }

        protected void Anchor_Click(Object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("hoslogin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());

            string query = "select * from [hospital] where email='" + Session["user"] + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            using (SqlDataReader oReader = cmd.ExecuteReader())
            {
                while (oReader.Read())
                {
                    id = oReader["hosId"].ToString();
                    name = oReader["hosName"].ToString();

                }

                con.Close();
            }


            int dept = Convert.ToInt32(DropDownList1.Text);
            Label6.Text = DropDownList1.Text;
            
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());

            con2.Open();

            string query2 = "INSERT INTO [doctor](docName,deptID,hosID,degree) values ('" +TextBox1.Text + "'," + dept+ ","+id+",'" + TextBox3.Text + "')";
            SqlCommand cmd2 = new SqlCommand(query2, con2);
            cmd2.ExecuteNonQuery();
            con2.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            string day = DropDownList3.Text;
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());

            con2.Open();

            string query2 = "UPDATE [appointment] SET [check]='YES' where [day]='"+day+"'";
            SqlCommand cmd2 = new SqlCommand(query2, con2);
            cmd2.ExecuteNonQuery();
            con2.Close();





        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            con.Open();
            string query = "UPDATE [doctor] SET docName = '" + TextBox1.Text + "',deptID =" + TextBox2.Text + " WHERE name='" + TextBox3.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();*/
        }
    }
}