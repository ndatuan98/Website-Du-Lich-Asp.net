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
using HanoiTourist.Controllers;
using HanoiTourist.Models;

namespace HanoiTourist.Views
{
    public partial class CartDetail : System.Web.UI.Page
    {
        ConnectDB connectDB = new ConnectDB();
        CartController cartController = new CartController();
        AccountController accounController = new AccountController();
        string sqlHienThi = "SELECT DISTINCT b.ID, b.DETAIL_ID,b.CODE,b.NAME_TOUR,b.Image,b.DEPARTURE,b.VEHICLE,b.SEATS,b.DEPARTURE_DATE,b.SCHEDULE_TOUR,a.count " +
                                  "  FROM dbo.Cart_Memory AS b " +
                                  "  LEFT JOIN(SELECT DETAIL_ID AS id, COUNT(DETAIL_ID) AS count FROM dbo.CART_MEMORY GROUP BY DETAIL_ID) AS a " +
                                  "  ON a.id = b.DETAIL_ID";
        DataTable dt1 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            //string sqlHienThi = "SELECT DISTINCT b.DETAIL_ID,b.CODE,b.NAME_TOUR,b.Image,b.DEPARTURE,b.VEHICLE,b.SEATS,b.SCHEDULE_TOUR,a.count " +
            //                      "  FROM dbo.Cart_Memory AS b " +
            //                      "  LEFT JOIN(SELECT DETAIL_ID AS id, COUNT(DETAIL_ID) AS count FROM dbo.CART_MEMORY GROUP BY DETAIL_ID) AS a " +
            //                      "  ON a.id = b.DETAIL_ID";
            string sqlTongTien = "SELECT SUM(adult_fare) AS TongTien FROM dbo.CART_MEMORY";
            string sqlQuocGia = "SELECT id,COUNTRY_NAME FROM dbo.COUNTRIES ";
            SqlConnection conn = connectDB.getConnection();
            conn.Open();
            dt1 = connectDB.getTable(sqlHienThi);
            DataTable dt2 = connectDB.getTable(sqlTongTien);
            ListCart.DataSource = dt1;
            ListCart.DataBind();
            ListQuocGia.DataSource = GetDataReader(sqlQuocGia);
            ListQuocGia.DataTextField = "COUNTRY_NAME";
            ListQuocGia.DataBind();
            ListQuyDanh.Items.Insert(0, new ListItem("Ông", "0"));
            ListQuyDanh.Items.Insert(0, new ListItem("Bà", "1"));
            try
            {
                if (dt2.Rows[0][0].ToString() == null || dt2.Rows[0][0].ToString() == "")
                {
                    txtTongTien.Text = "";
                }
                else
                {
                    txtTongTien.Text = String.Format("{0:#,###đ}", Convert.ToDecimal(dt2.Rows[0][0].ToString()));
                }
            }catch(Exception ex) { }
            

            if (Session["user"] != null)
            {
                Account acc = accounController.getByEmail(Session["user"].ToString());
                txtDiaChi.Text = acc.Address;
                txtEmail.Text = acc.Email;
                txtSDT.Text = acc.Phone;
                txtHoTen.Text = acc.Fullname;
            }
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
            if(dt1.Rows.Count < 1)
            {
                txtThongbao2.Text = "Bạn chưa có tour nào!";
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
               
        }

        protected void btnHuyTour_Click(object sender, EventArgs e)
        {
            LinkButton btn = sender as LinkButton;
            txtThongbao2.Text = btn.CommandArgument.ToString();
            int idDel =Convert.ToInt32( btn.CommandArgument.ToString());
            string sql = "DELETE  FROM dbo.CART_MEMORY WHERE ID = " + idDel;
            connectDB.ExecutedNonQuery(sql);
            Response.Redirect("CartDetail.aspx");
        }

        protected void ItemCommand(object source, DataListCommandEventArgs e)
        {
        }

        protected void EditList(object source, DataListCommandEventArgs e)
        {
        }
    }
}