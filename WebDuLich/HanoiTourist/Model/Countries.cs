using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HanoiTourist.Models
{
    public class Countries
    {
        int id, continents_id,create_by,delete_by;
        string country_code, country_name;
        DateTime create_date;
        Boolean is_deleted;

        public int Id { get => id; set => id = value; }
        public int Continents_id { get => continents_id; set => continents_id = value; }
        public int Create_by { get => create_by; set => create_by = value; }
        public int Delete_by { get => delete_by; set => delete_by = value; }
        public string Country_code { get => country_code; set => country_code = value; }
        public string Country_name { get => country_name; set => country_name = value; }
        public DateTime Create_date { get => create_date; set => create_date = value; }
        public bool Is_deleted { get => is_deleted; set => is_deleted = value; }
    }
}