using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HanoiTourist.Model
{
    public class Cart_Memory
    {
        int id, detail_id,seats;
        string code, name_tour, departure, destination, period, vehicle, image, schedule_tour;
        Decimal ADULT_FARE, CHILD_FARE_5_11, CHILD_FARE_2_4, CHILD_FARE_LESS_2;
        DateTime DEPARTURE_DATE;

        public int Id { get => id; set => id = value; }
        public int Detail_id { get => detail_id; set => detail_id = value; }
        public int Seats { get => seats; set => seats = value; }
        public string Code { get => code; set => code = value; }
        public string Name_tour { get => name_tour; set => name_tour = value; }
        public string Departure { get => departure; set => departure = value; }
        public string Destination { get => destination; set => destination = value; }
        public string Period { get => period; set => period = value; }
        public string Vehicle { get => vehicle; set => vehicle = value; }
        public string Image { get => image; set => image = value; }
        public string Schedule_tour { get => schedule_tour; set => schedule_tour = value; }
        public decimal ADULT_FARE1 { get => ADULT_FARE; set => ADULT_FARE = value; }
        public decimal CHILD_FARE_5_111 { get => CHILD_FARE_5_11; set => CHILD_FARE_5_11 = value; }
        public decimal CHILD_FARE_2_41 { get => CHILD_FARE_2_4; set => CHILD_FARE_2_4 = value; }
        public decimal CHILD_FARE_LESS_21 { get => CHILD_FARE_LESS_2; set => CHILD_FARE_LESS_2 = value; }
        public DateTime DEPARTURE_DATE1 { get => DEPARTURE_DATE; set => DEPARTURE_DATE = value; }
    }
}