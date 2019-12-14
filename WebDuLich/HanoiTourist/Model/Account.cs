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

        public Int32 Id { get => id; set => id = value; }
        public string Email { get => email; set => email = value; }
        public string Fullname { get => fullname; set => fullname = value; }
        public string Phone { get => phone; set => phone = value; }
        public string DateOfBirth { get => dateOfBirth; set => dateOfBirth = value; }
        public string Address { get => address; set => address = value; }
        public string Pass { get => pass; set => pass = value; }
    }
}