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
    public partial class SearchResult : System.Web.UI.Page
    {
        ConnectDB connectDB = new ConnectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            string chuoiTimKiem = Request.QueryString["chuoiTimKiem"].ToString();
            string[] arrListStr = chuoiTimKiem.Split(new char[] { ',' });
            string diemXP = arrListStr[0].ToString();
            string dich = arrListStr[1].ToString();
            string lichTrinh = arrListStr[2].ToString();
            string ngayKhoiHanh = arrListStr[3].ToString();
            int khoangGiaId = Convert.ToInt32(arrListStr[4].ToString());
            string khoangGia;
            if(khoangGiaId == 0)
            {
                khoangGia = "";
            }
            else if(khoangGiaId  == 1)
            {
                khoangGia = "OR a.ADULT_FARE < 3000000";
            }
            else if (khoangGiaId == 2)
            {
                khoangGia = "OR a.ADULT_FARE >= 3000000 AND a.ADULT_FARE < 10000000";
            }
            else if (khoangGiaId == 3)
            {
                khoangGia = "OR a.ADULT_FARE >= 10000000 AND a.ADULT_FARE < 25000000";
            }
            else if (khoangGiaId == 4)
            {
                khoangGia = "OR a.ADULT_FARE >= 25000000 AND a.ADULT_FARE < 40000000";
            }
            else
            {
                khoangGia = "OR a.ADULT_FARE >= 40000000";
            }
            string sql = "SELECT NAME_TOUR,VEHICLE,DEPARTURE_DATE,ADULT_FARE,Image FROM dbo.DETAILS_TOUR as a " +
                           " INNER JOIN dbo.TOUR AS b ON a.ID = b.DETAIL_ID" +
                           " WHERE a.DEPARTURE LIKE N'" + diemXP + "'" +
                          "  OR A.DESTINATION LIKE N'" + dich + "'" +
                          "  OR a.SCHEDULE_TOUR LIKE N'" + lichTrinh + "'" +
                          "  OR b.DEPARTURE_DATE LIKE N'" + ngayKhoiHanh + "'" +
                           khoangGia;
            DataTable dt = connectDB.getTable(sql);
            ListKetQua.DataSource = dt;
            ListKetQua.DataBind();
        }
    }
}