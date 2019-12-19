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
        DataTable dt1 = new DataTable();
        SqlConnection conn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

            string sqlQuocGia = "SELECT id,COUNTRY_NAME FROM dbo.COUNTRIES ";
            string sqlHienThi2 = "select *,SL*ADULT_FARE as TONGTIEN from cart_memory";
            conn = connectDB.getConnection();
            conn.Open();
            dt1 = connectDB.getTable(sqlHienThi2);
            DataTable dt2 = connectDB.getTable(sqlHienThi2);
            ListCart.DataSource = dt2;
            ListCart.DataBind();
            ListQuocGia.DataSource = GetDataReader(sqlQuocGia);
            ListQuocGia.DataTextField = "COUNTRY_NAME";
            ListQuocGia.DataBind();
            ListQuyDanh.Items.Insert(0, new ListItem("Ông", "0"));
            ListQuyDanh.Items.Insert(0, new ListItem("Bà", "1"));

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
                cartController.DeleteTable();
                Response.Redirect("ThanhToan.aspx");
            }
               
        }

        protected void btnHuyTour_Click(object sender, EventArgs e)
        {
            LinkButton btn = sender as LinkButton;
            txtThongbao2.Text = btn.CommandArgument.ToString();
            int idDel =Convert.ToInt32( btn.CommandArgument.ToString());
            string sql = "UPDATE dbo.CART_MEMORY SET sl -= 1 WHERE DETAIL_ID=" + idDel;
            string sql2 = "select sl from cart_memory where detail_id = " + idDel;
            conn.Open();
            connectDB.ExecutedNonQuery(sql);
            dt1 = connectDB.getTable(sql2);
            if(Int32.Parse(dt1.Rows[0][0].ToString()) == 0)
            {
                string sqlDel = "Delete from cart_memory where detail_id =" + idDel;
                connectDB.ExecutedNonQuery(sqlDel);
            }
            Response.Redirect("CartDetail.aspx");
            conn.Close();
        }

        protected void ItemCommand(object source, DataListCommandEventArgs e)
        {
        }

        protected void EditList(object source, DataListCommandEventArgs e)
        {
        }
    }
}