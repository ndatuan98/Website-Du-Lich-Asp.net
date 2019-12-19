using HanoiTourist.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HanoiTourist.Admin.View.Cart
{
    public partial class Index : System.Web.UI.Page
    {
        ConnectDB connect = new ConnectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            SqlConnection conn = connect.getConnection();
            string sql = "SELECT CART.ID,NAME_TOUR, ADULT_SEAT, CHILD_SEAT, FULLNAME, ADDRESS, EMAIL, PHONE, MESSAGE, TYPE_NAME, METHOD_NAME FROM dbo.CART,dbo.TOUR,dbo.DETAILS_TOUR,dbo.TYPE_PAYMENT,dbo.PAYMENT_METHODS WHERE dbo.TOUR.ID = dbo.CART.ID_TOUR AND dbo.DETAILS_TOUR.ID = dbo.TOUR.DETAIL_ID AND dbo.TYPE_PAYMENT.ID = dbo.CART.TYPE_PAYMENT_ID AND dbo.PAYMENT_METHODS.ID = dbo.CART.PAYMENT_METHOD_ID AND dbo.CART.IS_DELETED = 0";
            DataTable dt = new DataTable();
            dt = connect.getTable(sql);
            ListCart.DataSource = dt;
            ListCart.DataBind();
        }
        protected void ListCart_Editing(object sender, GridViewEditEventArgs e)
        {
            int idCart = Convert.ToInt32(ListCart.DataKeys[e.NewEditIndex].Value);
        }
    }
}