using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HanoiTourist.Controllers;
using HanoiTourist.DTO;
using HanoiTourist.Models;
using System.Data;
using System.Data.SqlClient;
namespace HanoiTourist.Views
{
    public partial class Home : System.Web.UI.Page
    {
        ConnectDB connectDB = new ConnectDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            string sqlHienThi = "SELECT b.NAME_TOUR,b.VEHICLE,a.DEPARTURE_DATE,b.ADULT_FARE,b.Image FROM dbo.TOUR a,dbo.DETAILS_TOUR b WHERE a.DETAIL_ID = b.ID";
            SqlConnection conn = connectDB.getConnection();
            conn.Open();
            DataTable dt = connectDB.getTable(sqlHienThi);
            ListTour.DataSource = dt;
            ListTour.DataBind();
        }
    }
}