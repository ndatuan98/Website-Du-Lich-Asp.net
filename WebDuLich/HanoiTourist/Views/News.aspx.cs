using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using HanoiTourist.DTO;
using HanoiTourist.Controller;
namespace HanoiTourist.Views
{
    public partial class News : System.Web.UI.Page
    {
        ConnectDB connectDB = new ConnectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = connectDB.getConnection();
            string sql = "SELECT * FROM dbo.NEWS";
            conn.Open();
            DataTable dt = connectDB.getTable(sql);
            ListTourHienThi.DataSource = dt;
            ListTourHienThi.DataBind();
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }

        }
    }
}