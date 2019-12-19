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
        public void AddToCart(int detail_id,string code, string name_tour, string departure, string destination, string period, string vehicle, int seats, string image, string schedule_tour, Decimal adult_fare,
                            Decimal child_fare_5_11, Decimal child_fare_2_4, Decimal child_fare_less_2)
        {
            string sql = "INSERT INTO dbo.CART_MEMORY" +
                    "  (DETAIL_ID, CODE, NAME_TOUR, DEPARTURE, DESTINATION, " +
                    "  PERIOD, VEHICLE, SEATS, IMAGE, " +
                        " SCHEDULE_TOUR, ADULT_FARE, CHILD_FARE_5_11, CHILD_FARE_2_4, CHILD_FARE_LESS_2) " +
                        "    VALUES(@DETAIL_ID, @CODE, @NAME_TOUR, " +
                        " @DEPARTURE, @DESTINATION, @PERIOD, @VEHICLE, @SEATS, @IMAGE, @SCHEDULE_TOUR, " +
                        " @ADULT_FARE, @CHILD_FARE_5_11, @CHILD_FARE_2_4, @CHILD_FARE_LESS_2)";
            SqlConnection conn = connectDB.getConnection();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@DETAIL_ID", detail_id);
            cmd.Parameters.AddWithValue("@CODE", code);
            cmd.Parameters.AddWithValue("@NAME_TOUR", name_tour);
            cmd.Parameters.AddWithValue("@DEPARTURE", departure);
            cmd.Parameters.AddWithValue("@DESTINATION", destination);
            cmd.Parameters.AddWithValue("@PERIOD", period);
            cmd.Parameters.AddWithValue("@VEHICLE", vehicle);
            cmd.Parameters.AddWithValue("@SEATS", seats);
            cmd.Parameters.AddWithValue("@IMAGE", image);
            cmd.Parameters.AddWithValue("@SCHEDULE_TOUR", schedule_tour);
            cmd.Parameters.AddWithValue("@ADULT_FARE", adult_fare);
            cmd.Parameters.AddWithValue("@CHILD_FARE_5_11", child_fare_5_11);
            cmd.Parameters.AddWithValue("@CHILD_FARE_2_4", child_fare_2_4);
            cmd.Parameters.AddWithValue("@CHILD_FARE_LESS_2", child_fare_less_2);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }



        public int demSoLuong(DataTable dt)
        {
            int sl = 0;
            for(int i = 0; i< dt.Rows.Count; i++)
            {
                for(int j = 1; j <dt.Rows.Count; j ++)
                {
                    if (dt.Rows[i] == dt.Rows[j])
                        sl++;
                }
            }
            return sl;
        }

        public void DeleteTable()
        {
            string sql = "DELETE  FROM cart_memory";
            connectDB.ExecutedNonQuery(sql);
            
        }
    }
}