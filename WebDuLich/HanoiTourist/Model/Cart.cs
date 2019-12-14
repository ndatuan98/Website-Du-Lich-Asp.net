using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HanoiTourist.Models
{
    public class Cart
    {
        int id, id_tour, adult_seat, child_seat;
        string fullname, address, email, phone, messages;
        int type_payment_id, payment_method_id, created_by_id, deleted_by_id;
        Boolean is_delete;
        DateTime create_date;

        public int Id { get => id; set => id = value; }
        public int Id_tour { get => id_tour; set => id_tour = value; }
        public int Adult_seat { get => adult_seat; set => adult_seat = value; }
        public int Child_seat { get => child_seat; set => child_seat = value; }
        public string Fullname { get => fullname; set => fullname = value; }
        public string Address { get => address; set => address = value; }
        public string Email { get => email; set => email = value; }
        public string Phone { get => phone; set => phone = value; }
        public string Messages { get => messages; set => messages = value; }
        public int Type_payment_id { get => type_payment_id; set => type_payment_id = value; }
        public int Payment_method_id { get => payment_method_id; set => payment_method_id = value; }
        public int Created_by_id { get => created_by_id; set => created_by_id = value; }
        public int Deleted_by_id { get => deleted_by_id; set => deleted_by_id = value; }
        public bool Is_delete { get => is_delete; set => is_delete = value; }
        public DateTime Create_date { get => create_date; set => create_date = value; }
    }
}