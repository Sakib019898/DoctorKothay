using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DaktarKothay
{
    public partial class hospitalinfo : System.Web.UI.Page
    {
        public static string id;
        string dept;
        protected void Page_Load(object sender, EventArgs e)
        {   
             id = Request.QueryString["id"];
           
            SqlDataSource1.SelectCommand = "select [docName],[deptName],[hosName],[degree] from doctor inner join department on doctor.[deptID]=department.[deptID] inner join hospital on doctor.[hosID]= hospital.[hosID] where hosName='"+id+"'";
          
           // SqlDataSource1.SelectCommand = "select [docName],[deptName],[hosName],[degree] from doctor inner join department on doctor.[deptID]=department.[deptID] inner join hospital on doctor.[hosID]= hospital.[hosID]";
            GridView1.Visible = true;
            appointment.Visible = true;
          //  WelcomeLabel.Text = id;
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            GridViewRow gr = GridView1.SelectedRow;
            Session["docName"] = gr.Cells[0].Text;
            Session["deptName"] = gr.Cells[1].Text;
            Session["hosName"] = gr.Cells[2].Text;
            Session["degree"] = gr.Cells[3].Text;
           
            //Server.Transfer("appoint.aspx");
        }

        protected void appointment_Click(object sender, EventArgs e)
        {   if(Session["docName"]==null)
            {
                errorlabel.Text = "Please Choose Doctor First";
            }
             else
            {
                Server.Transfer("appoint.aspx");
            }
           
        }
        protected void column9_Click(object sender, EventArgs e)

        {
            dept = column9.Text;
            SqlDataSource1.SelectCommand = "select [docName],[deptName],[hosName],[degree] from doctor inner join department on doctor.[deptID]=department.[deptID] inner join hospital on doctor.[hosID]= hospital.[hosID] where [deptName]='" + dept + "' AND [hosName]='" + id + "'";
            GridView1.Visible = true;
            appointment.Visible = true;
        }

        protected void column8_Click(object sender, EventArgs e)
        {
            dept = column8.Text;
            SqlDataSource1.SelectCommand = "select [docName],[deptName],[hosName],[degree] from doctor inner join department on doctor.[deptID]=department.[deptID] inner join hospital on doctor.[hosID]= hospital.[hosID] where [deptName]='" + dept + "' AND [hosName]='" + id + "'";
            GridView1.Visible = true;
            appointment.Visible = true;
        }

        protected void column7_Click(object sender, EventArgs e)
        {
            dept = column7.Text;
            SqlDataSource1.SelectCommand = "select [docName],[deptName],[hosName],[degree] from doctor inner join department on doctor.[deptID]=department.[deptID] inner join hospital on doctor.[hosID]= hospital.[hosID] where deptName='" + dept + "' AND [hosName]='" + id + "'";
            GridView1.Visible = true;
            appointment.Visible = true;
        }

        protected void column6_Click(object sender, EventArgs e)
        {
            dept = column6.Text;
            SqlDataSource1.SelectCommand = "select [docName],[deptName],[hosName],[degree] from doctor inner join department on doctor.[deptID]=department.[deptID] inner join hospital on doctor.[hosID]= hospital.[hosID] where deptName='" + dept + "' AND [hosName]='" + id + "'";
            GridView1.Visible = true;
            appointment.Visible = true;
        }

        protected void column5_Click(object sender, EventArgs e)
        {
            dept = column5.Text;
            SqlDataSource1.SelectCommand = "select [docName],[deptName],[hosName],[degree] from doctor inner join department on doctor.[deptID]=department.[deptID] inner join hospital on doctor.[hosID]= hospital.[hosID] where deptName='" + dept + "' AND [hosName]='" + id+ "'";
            GridView1.Visible = true;
            appointment.Visible = true;
        }

        protected void column4_Click(object sender, EventArgs e)
        {
            dept = column4.Text;
            SqlDataSource1.SelectCommand = "select [docName],[deptName],[hosName],[degree] from doctor inner join department on doctor.[deptID]=department.[deptID] inner join hospital on doctor.[hosID]= hospital.[hosID] where deptName='" + dept + "' AND [hosName]='" + id+ "'";
            GridView1.Visible = true;
            appointment.Visible = true;
        }

        protected void column3_Click(object sender, EventArgs e)
        {
            dept = column3.Text;
            SqlDataSource1.SelectCommand = "select [docName],[deptName],[hosName],[degree] from doctor inner join department on doctor.[deptID]=department.[deptID] inner join hospital on doctor.[hosID]= hospital.[hosID] where deptName='" + dept + "' AND [hosName]='" + id + "'";
            GridView1.Visible = true;
            appointment.Visible = true;
        }

        protected void column2_Click(object sender, EventArgs e)
        {
            dept = column2.Text;
            SqlDataSource1.SelectCommand = "select [docName],[deptName],[hosName],[degree] from doctor inner join department on doctor.[deptID]=department.[deptID] inner join hospital on doctor.[hosID]= hospital.[hosID] where deptName='" + dept + "' AND [hosName]='" + id+ "'";
            GridView1.Visible = true;
            appointment.Visible = true;
        }

        protected void column1_Click(object sender, EventArgs e)
        {
            dept = column1.Text;
            SqlDataSource1.SelectCommand = "select [docName],[deptName],[hosName],[degree] from doctor inner join department on doctor.[deptID]=department.[deptID] inner join hospital on doctor.[hosID]= hospital.[hosID] where deptName='" + dept + "' AND [hosName]='" + id + "'";
            GridView1.Visible = true;
            appointment.Visible = true;
        }
    }
}