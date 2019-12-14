using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HanoiTourist.Models
{
    public class Details_Tour
    {
        int id;
        string code, name_tour, departure, destination, period, vehicle;
        int seat;
        string schedule_tour;
        Decimal adult_fare, child_fare_5_11, child_fare_2_4, child_fare_less_2;
        Boolean is_hotTour;
        float is_sale_tour;
        DateTime create_date;
        int create_by;
        Boolean is_delete;
        int delete_by;

        public int Id { get => id; set => id = value; }
        public string Code { get => code; set => code = value; }
        public string Name_tour { get => name_tour; set => name_tour = value; }
        public string Departure { get => departure; set => departure = value; }
        public string Destination { get => destination; set => destination = value; }
        public string Period { get => period; set => period = value; }
        public string Vehicle { get => vehicle; set => vehicle = value; }
        public int Seat { get => seat; set => seat = value; }
        public string Schedule_tour { get => schedule_tour; set => schedule_tour = value; }
        public decimal Adult_fare { get => adult_fare; set => adult_fare = value; }
        public decimal Child_fare_5_11 { get => child_fare_5_11; set => child_fare_5_11 = value; }
        public decimal Child_fare_2_4 { get => child_fare_2_4; set => child_fare_2_4 = value; }
        public decimal Child_fare_less_2 { get => child_fare_less_2; set => child_fare_less_2 = value; }
        public bool Is_hotTour { get => is_hotTour; set => is_hotTour = value; }
        public float Is_sale_tour { get => is_sale_tour; set => is_sale_tour = value; }
        public DateTime Create_date { get => create_date; set => create_date = value; }
        public int Create_by { get => create_by; set => create_by = value; }
        public bool Is_delete { get => is_delete; set => is_delete = value; }
        public int Delete_by { get => delete_by; set => delete_by = value; }
    }
}