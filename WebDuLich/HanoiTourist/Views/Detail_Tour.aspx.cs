using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using HanoiTourist.Controllers;
using HanoiTourist.DTO;
namespace HanoiTourist.Views
{
    public partial class Detail_Tour : System.Web.UI.Page
    {
        ConnectDB connectDB = new ConnectDB();

        protected void Page_Load(object sender, EventArgs e)
        {
           // test.Text = Request.QueryString["Detail_id"].ToString();
            int detail_id = Convert.ToInt32(Request.QueryString["Detail_id"].ToString());
            string sql = "SELECT * FROM dbo.DETAILS_TOUR AS a " +
                          "  INNER JOIN dbo.TOUR AS b ON a.ID = b.DETAIL_ID " +
                           " INNER JOIN dbo.IMAGES_TOUR AS c ON a.ID = c.DETAIL_ID "+
                          "  WHERE a.ID = " + detail_id;
            SqlConnection conn = connectDB.getConnection();
            conn.Open();
            DataTable dt = connectDB.getTable(sql);
            DetailTour.DataSource = dt;
            DetailTour.DataBind();

            ListGia.DataSource = dt;
            ListGia.DataBind();
            conn.Close();
        }
    }
}