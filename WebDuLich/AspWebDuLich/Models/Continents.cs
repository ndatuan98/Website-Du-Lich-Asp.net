using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AspWebDuLich.Models
{
    public class Continents
    {
        int id, create_by, delete_by;
        string continent_code, continent_name;
        DateTime create_date;
        Boolean is_delete;

        public int Id { get => id; set => id = value; }
        public int Create_by { get => create_by; set => create_by = value; }
        public int Delete_by { get => delete_by; set => delete_by = value; }
        public string Continent_code { get => continent_code; set => continent_code = value; }
        public string Continent_name { get => continent_name; set => continent_name = value; }
        public DateTime Create_date { get => create_date; set => create_date = value; }
        public bool Is_delete { get => is_delete; set => is_delete = value; }
    }
}