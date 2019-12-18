using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HanoiTourist.DTO;
using System.Data;
using System.Data.SqlClient;
namespace HanoiTourist.Controllers
{
    public class TourController
    {
        // GET: Tour
        ConnectDB connectDB = new ConnectDB();
        public void HienThi(int id)
        {
        }

        public String checkId(int id)
        {
            string sql = null;
            if (id == -3)
            {
                sql = "select a.name_tour,a.vehicle,b.departure_date,a.adult_fare,a.image,b.detail_id  " +
                       " from dbo.details_tour as  a inner join dbo.tour as b on a.id = b.detail_id " +
                        " where a.is_hot_tour = 1 ";

            }
            else if (id == -1)
            {
                sql = "SELECT a.NAME_TOUR,a.VEHICLE,b.DEPARTURE_DATE,a.ADULT_FARE,a.Image,b.Detail_Id  " +
                       " FROM dbo.DETAILS_TOUR AS  a INNER JOIN dbo.TOUR AS b on a.ID = b.DETAIL_ID" +
                       " WHERE b.COUNTRY_ID = 0 ";
            }
            else if(id == -3)
            {
                sql = "SELECT a.NAME_TOUR,a.VEHICLE,b.DEPARTURE_DATE,a.ADULT_FARE,a.Image,b.Detail_Id " +
                       " FROM dbo.DETAILS_TOUR AS  a INNER JOIN dbo.TOUR AS b on a.ID = b.DETAIL_ID " +
                       " WHERE b.COUNTRY_ID != 0 ";
            }
            else
            {
                sql = "SELECT a.NAME_TOUR,a.VEHICLE,b.DEPARTURE_DATE,a.ADULT_FARE,a.Image,b.Detail_Id " +
                       " FROM dbo.DETAILS_TOUR AS  a INNER JOIN dbo.TOUR AS b on a.ID = b.DETAIL_ID " +
                       " WHERE b.COUNTRY_ID =" + id;
            }
            return sql;
        }
        public String checkTitle(int id)
        {
            string titleName = null;
            if (id == -3)
            {
                titleName = "HOT TOUR";

            }
            else if (id == -1)
            {
                titleName = "TOUR TRONG NƯỚC";
            }
            else if(id == -2)
            {
                titleName = "TOUR NƯỚC NGOÀI";
            }
            return titleName;
        }

    }
}