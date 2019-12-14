using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HanoiTourist.Models
{
    public class Payment_Methods
    {
        int id, create_by, delete_by;
        string method_name;
        DateTime create_date;
        Boolean is_delete;

        public int Id { get => id; set => id = value; }
        public int Create_by { get => create_by; set => create_by = value; }
        public int Delete_by { get => delete_by; set => delete_by = value; }
        public string Method_name { get => method_name; set => method_name = value; }
        public DateTime Create_date { get => create_date; set => create_date = value; }
        public bool Is_delete { get => is_delete; set => is_delete = value; }
    }
}