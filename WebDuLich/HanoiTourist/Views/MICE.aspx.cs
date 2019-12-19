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
    public partial class MICE : System.Web.UI.Page
    {
        ConnectDB connectDB = new ConnectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = connectDB.getConnection();
            string sql = "SELECT top 7 b.NAME_TOUR,b.VEHICLE,a.DEPARTURE_DATE,b.ADULT_FARE,b.Image,a.Detail_Id FROM dbo.TOUR a,dbo.DETAILS_TOUR b WHERE a.DETAIL_ID = b.ID ";
            conn.Open();
            DataTable dt = connectDB.getTable(sql);
            ListTourHienThi.DataSource = dt;
            ListTourHienThi.DataBind();
            if(conn.State == ConnectionState.Open)
            {
                conn.Close();
            }

        }
    }
}