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
    public partial class WebForm1 : System.Web.UI.Page
    {
        int flag = 0;
        public static string docid,id,id3;
        static int id2;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con4 = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());

            string query4 = "select * from [user] where email='" + Session["user"] + "'";
            SqlCommand cmd4 = new SqlCommand(query4, con4);
            con4.Open();
            using (SqlDataReader oReader = cmd4.ExecuteReader())
            {
                while (oReader.Read())
                {
                    id3 = oReader["Id"].ToString();


                }

                con4.Close();
            }
            id2 = Convert.ToInt32(id3);
            TextPat.Text = id3;




            SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            DataTable dt3 = new DataTable();
            string query3 = "select * from [appointment] where patID=" + id2+ " AND [check]='NO'";
            
            SqlDataAdapter dap3 = new SqlDataAdapter(query3, con3);
            con3.Open();
            dap3.Fill(dt3);

            if (dt3.Rows.Count != 0)
            {


                ///////////////////*********////////
                Server.Transfer("home.aspx", true);

            }
            con3.Close();

            




            TextName.Text = Session["docName"].ToString();
            TextDept.Text = Session["deptName"].ToString();
            TextHos.Text= Session["hosName"].ToString();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());

            string query = "select * from [doctor] where docName='" + Session["docName"] + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            using (SqlDataReader oReader = cmd.ExecuteReader())
            {
                while (oReader.Read())
                {
                    docid = oReader["docId"].ToString();
                    

                }

                con.Close();
            }
            int Idocid = Convert.ToInt32(docid);
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            DataTable dt = new DataTable();
            string query2 = "select * from [doctorstates] where docID=" + Idocid;
         
            SqlDataAdapter dap = new SqlDataAdapter(query2, con2);
            con2.Open();
            dap.Fill(dt);

            if (dt.Rows.Count > 0)
            {

                DropDownList1.DataSource = dt;

                DropDownList1.DataTextField = "day"; // the items to be displayed in the list items

                DropDownList1.DataValueField = "day"; // the id of the items displayed

                DropDownList1.DataBind();

            }
            con2.Close();





        }
        protected void submit_Click(object sender, EventArgs e)
        {








            string day = DropDownList1.Text;
            
          
            

            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            con.Open();
                string query = "INSERT INTO [appointment]([docName],[docDept],[patID],[hosName],[day],[check]) VALUES('" + TextName.Text + "','" + TextDept.Text + "'," + id2 + ",'" + TextHos.Text + "','" + day + "','NO')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                submitlabel.Text = "Submission Successful!";
              
            
            
            /*if (TextPat.Text == "")
            {
                errorlabel.Text = "Please Enter Patient Name";
                submitlabel.Text = "";
            }
            else{ 
                errorlabel.Text = "";
                
                
            }*/



        }
    }
}