using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HanoiTourist.Models
{
    public class Account
    {
        Int32 id;
        string email, fullname, phone, dateOfBirth, address, pass;
        bool is_admin;
        public Int32 Id { get => id; set => id = value; }
        public string Email { get => email; set => email = value; }
        public string Fullname { get => fullname; set => fullname = value; }
        public string Phone { get => phone; set => phone = value; }
        public string DateOfBirth { get => dateOfBirth; set => dateOfBirth = value; }
        public string Address { get => address; set => address = value; }
        public string Pass { get => pass; set => pass = value; }
        public bool Is_Admin { get => is_admin; set => is_admin = value; }
    }
}