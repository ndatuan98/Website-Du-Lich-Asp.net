using HanoiTourist.Controller;
using HanoiTourist.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HanoiTourist.Admin.View.Carts
{
    public partial class ConfirmCart : System.Web.UI.Page
    {
        ConnectDB connect = new ConnectDB();
        CartController cc = new CartController();
        void load_data()
        {
            SqlConnection conn = connect.getConnection();
            string sql = "SELECT CART.ID,NAME_TOUR, ADULT_SEAT, CHILD_SEAT, FULLNAME, ADDRESS, EMAIL, PHONE, MESSAGE, TYPE_NAME, METHOD_NAME FROM dbo.CART,dbo.TOUR,dbo.DETAILS_TOUR,dbo.TYPE_PAYMENT,dbo.PAYMENT_METHODS WHERE dbo.TOUR.ID = dbo.CART.ID_TOUR AND dbo.DETAILS_TOUR.ID = dbo.TOUR.DETAIL_ID AND dbo.TYPE_PAYMENT.ID = dbo.CART.TYPE_PAYMENT_ID AND dbo.PAYMENT_METHODS.ID = dbo.CART.PAYMENT_METHOD_ID AND dbo.CART.IS_DELETED = 1";
            DataTable dt = new DataTable();
            dt = connect.getTable(sql);
            ListCart.DataSource = dt;
            ListCart.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            load_data();
        }
        int stt = 1;
        public string get_stt()
        {
            return Convert.ToString(stt++);
        }
        protected void ListCart_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ListCart.PageIndex = e.NewPageIndex;   //trang hien tai
            int trang_thu = e.NewPageIndex;      //the hien trang thu may
            int so_dong = ListCart.PageSize;       //moi trang co bao nhieu dong
            stt = trang_thu * so_dong + 1;
            load_data();
        }
    }
}