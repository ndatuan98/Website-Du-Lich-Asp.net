using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HanoiTourist.Controllers;
using HanoiTourist.DTO;
using System.Data;
using System.Data.SqlClient;
namespace HanoiTourist.Views
{
    public partial class ListTour : System.Web.UI.Page
    {
        ConnectDB connectDB = new ConnectDB();
        TourController tourController = new TourController();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id_Tour =Convert.ToInt32( Request.QueryString["Country_ID"].ToString());
            string sqlHienThi = tourController.checkId(id_Tour);
            string title = tourController.checkTitle(id_Tour);
            titleName.Text = title;
            SqlConnection conn = connectDB.getConnection();
            conn.Open();
            DataTable dt = connectDB.getTable(sqlHienThi);
            ListTourHienThi.DataSource = dt;
            ListTourHienThi.DataBind();
            
        }

        protected void btnGiuCho_Click(object sender, EventArgs e)
        {

        }
    }
}