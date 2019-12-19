using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HanoiTourist.Model;
using HanoiTourist.DTO;
using System.Data;
using System.Data.SqlClient;

namespace HanoiTourist.Controller
{
    public class CartController
    {
        public string ShoppingCartId { get; set; }
        ConnectDB connectDB = new ConnectDB();
        public const string CartSessionKey = "CartId";
        public void AddToCard(int detail_id, string code, string name_tour, string departure, string destination, string period, string vehicle, int seats, string image,
                                Decimal adult_fare, int sl, string email_user,DateTime departure_date)
        {
            string sql = "INSERT INTO dbo.CART_MEMORY" +
                         " (DETAIL_ID, CODE, NAME_TOUR, DEPARTURE, DESTINATION, PERIOD," +
                          "  VEHICLE, SEATS, IMAGE, ADULT_FARE, SL, EMAIL_USER ,DEPARTURE_DATE) " +
                        " VALUES(@DETAIL_ID, @CODE, @NAME_TOUR, @DEPARTURE, @DESTINATION, @PERIOD," +
                           "  @VEHICLE, @SEATS, @IMAGE, @ADULT_FARE, @SL, @EMAIL_USER,@DEPARTURE_DATE)";
            SqlConnection conn = connectDB.getConnection();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@DETAIL_ID", detail_id);
            cmd.Parameters.AddWithValue("@CODE", code);
            cmd.Parameters.AddWithValue("@NAME_TOUR", name_tour);
            cmd.Parameters.AddWithValue("@DEPARTURE", destination);
            cmd.Parameters.AddWithValue("@DESTINATION", departure);
            cmd.Parameters.AddWithValue("@PERIOD", period);
            cmd.Parameters.AddWithValue("@VEHICLE", vehicle);
            cmd.Parameters.AddWithValue("@SEATS", seats);
            cmd.Parameters.AddWithValue("@IMAGE", image);
            cmd.Parameters.AddWithValue("@ADULT_FARE", adult_fare);
            cmd.Parameters.AddWithValue("@SL", sl);
            cmd.Parameters.AddWithValue("@EMAIL_USER", email_user);
            cmd.Parameters.AddWithValue("@DEPARTURE_DATE", departure_date);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

        }

        public void DeleteTable()
        {
            string sql = "DELETE  FROM cart_memory";
            connectDB.ExecutedNonQuery(sql);
            
        }
    }
}