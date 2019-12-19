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
    public partial class Cart : System.Web.UI.Page
    {
        ConnectDB connectDB = new ConnectDB();
        CartController cartController = new CartController();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Detail_Id"]);
            string sqlHienThi = "SELECT DISTINCT b.DETAIL_ID,b.CODE,b.NAME_TOUR,b.Image,b.DEPARTURE,b.VEHICLE,b.SEATS,b.SCHEDULE_TOUR,a.count " +
                                  "  FROM dbo.Cart_Memory AS b " +
                                  "  LEFT JOIN(SELECT DETAIL_ID AS id, COUNT(DETAIL_ID) AS count FROM dbo.CART_MEMORY GROUP BY DETAIL_ID) AS a "+
                                  "  ON a.id = b.DETAIL_ID";
            string sqlQuocGia = "SELECT id,COUNTRY_NAME FROM dbo.COUNTRIES ";
            string sqlCart2 = "SELECT detail_id,code,name_tour,departure,destination,period,vehicle,seats,image,schedule_tour,adult_fare,child_fare_5_11,child_fare_2_4,child_fare_less_2 FROM dbo.TOUR a,dbo.DETAILS_TOUR b WHERE a.DETAIL_ID = b.ID AND a.DETAIL_ID = " + id;
            SqlConnection conn = connectDB.getConnection();
            conn.Open();
            IDictionary<int, int> arr = new Dictionary<int, int>();
            DataTable dt1 = connectDB.getTable(sqlHienThi);
            DataTable dt2 = connectDB.getTable(sqlCart2);
            for (int i =0; i< dt2.Rows.Count; i++)
            {
                cartController.AddToCart(Int32.Parse(dt2.Rows[i][0].ToString()), dt2.Rows[i][1].ToString(), dt2.Rows[i][2].ToString(), dt2.Rows[i][3].ToString(), dt2.Rows[i][4].ToString(), dt2.Rows[i][5].ToString(), dt2.Rows[i][6].ToString(),Int32.Parse( dt2.Rows[i][7].ToString()), dt2.Rows[i][8].ToString(), dt2.Rows[i][9].ToString(),Decimal.Parse( dt2.Rows[i][10].ToString()), Decimal.Parse(dt2.Rows[i][11].ToString()), Decimal.Parse(dt2.Rows[i][12].ToString()), Decimal.Parse(dt2.Rows[i][13].ToString()));
            }
             foreach(var i in arr)
            {
                string sqlTour = "select * from details_tour where id = " + i.Key;
                dt2 = connectDB.getTable(sqlTour);
                ListCartAdd.DataSource = dt2;
                ListCartAdd.DataBind();
            }
         

            DataTable dt = connectDB.getTable(sqlHienThi);
            ListQuocGia.DataSource = GetDataReader(sqlQuocGia);
            ListQuocGia.DataTextField = "COUNTRY_NAME";
            ListQuocGia.DataBind();
            ListQuyDanh.Items.Insert(0, new ListItem("Ông", "0"));
            ListQuyDanh.Items.Insert(0, new ListItem("Bà", "1"));
            ListCart.DataSource = dt;
            ListCart.DataBind();
            if(conn.State == ConnectionState.Open)
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
            cartController.DeleteTable();
            Response.Redirect("ThanhToan.aspx");
        }
    }
}