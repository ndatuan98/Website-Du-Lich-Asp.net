using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using HanoiTourist.DTO;
namespace HanoiTourist.Views
{
    public partial class Library : System.Web.UI.Page
    {
        ConnectDB connectDB = new ConnectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = connectDB.getConnection();
            conn.Open();
            string sql = "SELECT image FROM dbo.DETAILS_TOUR";
            DataTable dt = connectDB.getTable(sql);
            ListHinhAnh.DataSource = dt;
            ListHinhAnh.DataBind();

            ListVideo.DataSource = dt;
            ListVideo.DataBind();
        }
    }
}