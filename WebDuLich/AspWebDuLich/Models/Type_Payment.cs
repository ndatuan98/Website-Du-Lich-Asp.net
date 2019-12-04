using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AspWebDuLich.Models
{
    public class Type_Payment
    {
        int id;
        string type_name;
        DateTime create_date;
        int create_by, deleted_by;
        Boolean is_delete;

        public int Id { get => id; set => id = value; }
        public string Type_name { get => type_name; set => type_name = value; }
        public DateTime Create_date { get => create_date; set => create_date = value; }
        public int Create_by { get => create_by; set => create_by = value; }
        public int Deleted_by { get => deleted_by; set => deleted_by = value; }
        public bool Is_delete { get => is_delete; set => is_delete = value; }
    }
}