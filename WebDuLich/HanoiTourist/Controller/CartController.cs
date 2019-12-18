using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HanoiTourist.Model;
using HanoiTourist.DTO;
namespace HanoiTourist.Controller
{
    public class CartController
    {
        public string ShoppingCartId { get; set; }
        ConnectDB connectDB = new ConnectDB();
        public const string CartSessionKey = "CartId";
        public void AddToCart(int id)
        {

        }
    }
}