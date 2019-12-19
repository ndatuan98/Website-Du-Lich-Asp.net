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
            string sqlHotTour = "SELECT top 5 b.NAME_TOUR,b.VEHICLE,a.DEPARTURE_DATE,b.ADULT_FARE,b.Image,a.Detail_Id FROM dbo.TOUR a,dbo.DETAILS_TOUR b WHERE a.DETAIL_ID = b.ID and b.IS_HOT_TOUR = 1";
            string sqlTourTN = "SELECT top 5 b.NAME_TOUR,b.VEHICLE,a.DEPARTURE_DATE,b.ADULT_FARE,b.Image,a.Detail_Id FROM dbo.TOUR a,dbo.DETAILS_TOUR b WHERE a.DETAIL_ID = b.ID and a.COUNTRY_ID = 0";
            string sqlTourNN = "SELECT top 5 a.NAME_TOUR,a.VEHICLE,b.DEPARTURE_DATE,a.ADULT_FARE,a.Image,b.Detail_Id "+
                                  "  FROM dbo.DETAILS_TOUR AS  a INNER JOIN dbo.TOUR AS b on a.ID = b.DETAIL_ID "+
                                  "  WHERE b.COUNTRY_ID != 0";
            SqlConnection conn = connectDB.getConnection();
            conn.Open();
            DataTable dt = connectDB.getTable(sqlHotTour);
            DataTable dt1 = connectDB.getTable(sqlTourTN);
            DataTable dt2 = connectDB.getTable(sqlTourNN);

            ListHotTour.DataSource = dt;
            ListHotTour.DataBind();
            ListTourTN.DataSource = dt1;
            ListTourTN.DataBind();
            ListTourNN.DataSource = dt2;
            ListTourNN.DataBind();

            string sqlDiemXP = " SELECT DISTINCT DEPARTURE FROM dbo.DETAILS_TOUR ";
            DrDiemXuatPhat.DataSource = GetDataReader(sqlDiemXP);
            DrDiemXuatPhat.DataTextField = "DEPARTURE";
            DrDiemXuatPhat.DataValueField = "DEPARTURE";
            DrDiemXuatPhat.DataBind();

            sqlDiemXP = " SELECT DISTINCT DESTINATION FROM dbo.DETAILS_TOUR ";
            DrDich.DataSource = GetDataReader(sqlDiemXP);
            DrDich.DataTextField = "DESTINATION";
            DrDich.DataValueField = "DESTINATION";
            DrDich.DataBind();

            sqlDiemXP = " SELECT DISTINCT PERIOD FROM dbo.DETAILS_TOUR ";
            DrLichTrinh.DataSource = GetDataReader(sqlDiemXP);
            DrLichTrinh.DataTextField = "PERIOD";
            DrLichTrinh.DataValueField = "PERIOD";
            DrLichTrinh.DataBind();

            //ListBanner.DataSource = dt3;
            //ListBanner.DataBind();

            DrKhoangGia.Items.Insert(0, new ListItem("Khoảng giá", "0"));
            DrKhoangGia.Items.Insert(1, new ListItem("Nhỏ Hơn 3 Triệu", "1"));
            DrKhoangGia.Items.Insert(2, new ListItem("Từ 3 Triệu - 10 Triệu", "2"));
            DrKhoangGia.Items.Insert(3, new ListItem("Từ 10 Triệu - 25 Triệu", "3"));
            DrKhoangGia.Items.Insert(4, new ListItem("Từ 25 Triệu - 40 Triệu", "4"));
            DrKhoangGia.Items.Insert(5, new ListItem("Trên 40 Triệu", "5"));
            if(conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }

        public SqlDataReader GetDataReader(string sql)
        {
           SqlConnection conn =  connectDB.getConnection();
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            return reader;
        }
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            string diemXP = DrDiemXuatPhat.SelectedValue.ToString();
            string dich = DrDich.SelectedValue.ToString();
            string lichTrinh = DrLichTrinh.SelectedValue.ToString();
            string ngayKhoiHanh = NgayThang.Text.Trim();
            string khoangGia = DrKhoangGia.SelectedValue.ToString();
            string chuoiTimKiem = diemXP + "," + dich + "," + lichTrinh + "," + ngayKhoiHanh + "," + khoangGia;
            Response.Redirect("SearchResult.aspx?chuoiTimKiem=" + chuoiTimKiem);
        }

        protected void ListHotTour_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnGiuCho_Click(object sender, EventArgs e)
        {

        }

        protected void btnGiuCho_Click1(object sender, EventArgs e)
        {

        }

        protected void btnGiuCho_Click2(object sender, EventArgs e)
        {

        }
    }
}