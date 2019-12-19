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

    public partial class Detail_News : System.Web.UI.Page
    {
        ConnectDB connectDB = new ConnectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            SqlConnection conn = connectDB.getConnection();
            conn.Open();
            string sql = "SELECT * FROM NEWS WHERE ID=" + id;
            DataTable dt = connectDB.getTable(sql);
            ListDetail_News.DataSource = dt;
            ListDetail_News.DataBind();
            if(conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }
    }
}