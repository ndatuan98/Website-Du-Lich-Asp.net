using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using HanoiTourist.DTO;
using System.Security.Cryptography;

namespace HanoiTourist.Controllers
{
    public class TourController
    {
        // GET: Tour
        ConnectDB connectDB = new ConnectDB();

        public void Update(int tourId, string code, string nametour, string departure, string destination, string period, string vehicle, string seats, string scheduletour, string createdate)
        {
            SqlConnection conn = connectDB.getConnection();
            string sqlUpdate = "UPDATE dbo.DETAILS_TOUR SET CODE=@code,NAME_TOUR = @nametour, DEPARTURE = @departure, " +
                      "DESTIONATION = @destination, PERIOD = @period,SEATS = @seats, SCHEDULE_TOUR = @scheduletour,CREATE_DATE = @createdate,VEHICLE = @vehicle WHERE ID =" + tourId;
            SqlCommand cmd = new SqlCommand(sqlUpdate, conn);
            cmd.Parameters.AddWithValue("@code", code);
            cmd.Parameters.AddWithValue("@nametour", nametour);
            cmd.Parameters.AddWithValue("@departure", departure);
            cmd.Parameters.AddWithValue("@destination", destination);
            cmd.Parameters.AddWithValue("@period", period);
            cmd.Parameters.AddWithValue("@vehicle", vehicle);
            cmd.Parameters.AddWithValue("@seats", seats);
            cmd.Parameters.AddWithValue("@scheduletour", scheduletour);
            cmd.Parameters.AddWithValue("@createdate", createdate);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public void CreateTour(string code, string nametour, string departure, string destination, string period, string vehicle, string seats, string scheduletour, string createdate)
        {
            SqlConnection conn = connectDB.getConnection();
            string sqlInsert = "INSERT INTO dbo.DETAILS_TOUR( CODE ,NAME_TOUR , DEPARTURE ,DESTINATION ,PERIOD ,VEHICLE, SEATS, SCHEDULETOUR, CREATEDATE)" +
                            " VALUES  ( @code,@nametour,@departure,@destination, @period, @vehicle, @seats,@scheduletour,@createdate)";
            SqlCommand cmd = new SqlCommand(sqlInsert, conn);
            cmd.Parameters.AddWithValue("@code", code);
            cmd.Parameters.AddWithValue("@nametour", nametour);
            cmd.Parameters.AddWithValue("@departure", departure);
            cmd.Parameters.AddWithValue("@destination", destination);
            cmd.Parameters.AddWithValue("@period", period);
            cmd.Parameters.AddWithValue("@vehicle", vehicle);
            cmd.Parameters.AddWithValue("@seats", seats);
            cmd.Parameters.AddWithValue("@scheduletour", scheduletour);
            cmd.Parameters.AddWithValue("@createdate", createdate);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public void DeleteTour(int tourId)
        {
            SqlConnection conn = connectDB.getConnection();
            string sqlDelete = "DELETE  FROM dbo.DETAILS_TOUR WHERE ID=@id";
            SqlCommand cmd = new SqlCommand(sqlDelete, conn);
            cmd.Parameters.AddWithValue("@id", tourId);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }

    }
}