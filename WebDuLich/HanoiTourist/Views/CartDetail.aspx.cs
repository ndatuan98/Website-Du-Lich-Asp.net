using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using HanoiTourist.DTO;
using HanoiTourist.Model;
using HanoiTourist.Controller;
namespace HanoiTourist.Views
{
    public partial class CartDetail : System.Web.UI.Page
    {
        ConnectDB connectDB = new ConnectDB();
        CartController cartController = new CartController();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sqlHienThi = "SELECT DISTINCT b.DETAIL_ID,b.CODE,b.NAME_TOUR,b.Image,b.DEPARTURE,b.VEHICLE,b.SEATS,b.SCHEDULE_TOUR,a.count " +
                                  "  FROM dbo.Cart_Memory AS b " +
                                  "  LEFT JOIN(SELECT DETAIL_ID AS id, COUNT(DETAIL_ID) AS count FROM dbo.CART_MEMORY GROUP BY DETAIL_ID) AS a " +
                                  "  ON a.id = b.DETAIL_ID";
            string sqlQuocGia = "SELECT id,COUNTRY_NAME FROM dbo.COUNTRIES ";
            SqlConnection conn = connectDB.getConnection();
            conn.Open();
            DataTable dt1 = connectDB.getTable(sqlHienThi);
            ListCart.DataSource = dt1;
            ListCart.DataBind();
            ListQuocGia.DataSource = GetDataReader(sqlQuocGia);
            ListQuocGia.DataTextField = "COUNTRY_NAME";
            ListQuocGia.DataBind();
            ListQuyDanh.Items.Insert(0, new ListItem("Ông", "0"));
            ListQuyDanh.Items.Insert(0, new ListItem("Bà", "1"));
            if (dt1.Rows.Count <1)
            {
                txtThongBao.Text = "Bạn chưa chọn tour nào!";
            }
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }

        public SqlDataReader GetDataReader(string sql)
        {
            SqlConnection conn = connectDB.getConnection();
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            return reader;
        }

        protected void btnThanhToan_Click(object sender, EventArgs e)
        {
                Response.Redirect("Home.aspx");
        }
    }
}