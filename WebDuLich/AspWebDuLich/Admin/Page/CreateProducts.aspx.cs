using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BTL1.Admin.Page
{
    public partial class CreateProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strCon = @"Data Source=DESKTOP-D5N4DEM\SQLEXPRESS;Initial Catalog=QLBH;Integrated Security=True";
            SqlConnection conn = new SqlConnection(strCon); conn.Open();
            string sql = "select Id, Name from Products";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            CategoryId.DataSource = dt;
            CategoryId.DataBind();
        }
    }
}