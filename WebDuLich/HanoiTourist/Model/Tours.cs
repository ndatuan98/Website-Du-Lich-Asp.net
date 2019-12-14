using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HanoiTourist.Models
{
    public class Tours
    {
        Int32 id, detail_id, countries_id, create_by_id, delete_by_id;
        Boolean is_deleted;
        DateTime departure_date, create_date;

        public int Id { get => id; set => id = value; }
        public int Detail_id { get => detail_id; set => detail_id = value; }
        public int Countries_id { get => countries_id; set => countries_id = value; }
        public int Create_by_id { get => create_by_id; set => create_by_id = value; }
        public int Delete_by_id { get => delete_by_id; set => delete_by_id = value; }
        public bool Is_deleted { get => is_deleted; set => is_deleted = value; }
        public DateTime Departure_date { get => departure_date; set => departure_date = value; }
        public DateTime Create_date { get => create_date; set => create_date = value; }
    }
}