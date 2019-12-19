using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using HanoiTourist.DTO;
using HanoiTourist.Controllers;
namespace HanoiTourist.Views
{
    public partial class ListTourWithMenu : System.Web.UI.Page
    {
        ConnectDB connectDB = new ConnectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            string cityName = Request.QueryString["Destination"].ToString();
            string sql = "SELECT a.NAME_TOUR,a.VEHICLE,b.DEPARTURE_DATE,a.ADULT_FARE,a.Image,b.Detail_Id " +
                           "FROM dbo.DETAILS_TOUR AS  a INNER JOIN dbo.TOUR AS b on a.ID = b.DETAIL_ID " +
                           " WHERE a.DESTINATION = N'" + cityName+"'";
            SqlConnection conn = connectDB.getConnection();
            DataTable dt = connectDB.getTable(sql);
            ListTourHienThi.DataSource = dt;
            ListTourHienThi.DataBind();

        }
    }
}