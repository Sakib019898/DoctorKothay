using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DaktarKothay
{
    public partial class medinfo : System.Web.UI.Page
    {
        public static string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id= Request.QueryString["id"];
            SqlDataSource1.SelectCommand = "select [name],[price],[amount] from medicines inner join medicineshop on medicines.shopID=medicineshop.medID where medName='"+id+"'";
            GridView1.Visible = true;
        }
      
    }
}