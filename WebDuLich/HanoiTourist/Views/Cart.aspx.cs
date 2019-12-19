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
    public partial class Cart : System.Web.UI.Page
    {
        ConnectDB connectDB = new ConnectDB();
        CartController cartController = new CartController();
        AccountController accountController = new AccountController();
        SqlConnection conn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Detail_Id"]);
            string sqlQuocGia = "SELECT id,COUNTRY_NAME FROM dbo.COUNTRIES ";
            string sqlCart2 = "SELECT detail_id,code,name_tour,departure,destination,period,vehicle,seats,image,adult_fare,a.DEPARTURE_DATE FROM dbo.TOUR a,dbo.DETAILS_TOUR b WHERE a.DETAIL_ID = b.ID AND a.DETAIL_ID = " + id;
            string sqlSL = "select detail_id from cart_memory where detail_id =" + id;
            string sqlHienThi2 = "select *,SL*ADULT_FARE as TONGTIEN from cart_memory";
            string sqlTongTien = "SELECT SUM(sl*ADULT_FARE) FROM dbo.CART_MEMORY";
            conn = connectDB.getConnection();
            conn.Open();
            string sql1;
            DataTable dt2 = connectDB.getTable(sqlCart2);
            DataTable dt3 = connectDB.getTable(sqlSL);
            DataTable dt5 = connectDB.getTable(sqlTongTien);
            
            if (dt3.Rows.Count > 0)
            {
                sql1 = "UPDATE dbo.CART_MEMORY SET SL += 1 WHERE DETAIL_ID=" + id;
                connectDB.ExecutedNonQuery(sql1);
            }
            else
            {
                cartController.AddToCard(Int32.Parse(dt2.Rows[0][0].ToString()), dt2.Rows[0][1].ToString(), dt2.Rows[0][2].ToString(), dt2.Rows[0][3].ToString(), dt2.Rows[0][4].ToString(), dt2.Rows[0][5].ToString(), dt2.Rows[0][6].ToString(), Int32.Parse(dt2.Rows[0][7].ToString()), dt2.Rows[0][8].ToString(), Decimal.Parse(dt2.Rows[0][9].ToString()), 1, "",DateTime.Parse(dt2.Rows[0][10].ToString()));
            }
            DataTable dt4 = connectDB.getTable(sqlHienThi2);
            ListCart.DataSource = dt4;
            ListCart.DataBind();
            ListQuocGia.DataSource = GetDataReader(sqlQuocGia);
            ListQuocGia.DataTextField = "COUNTRY_NAME";
            ListQuocGia.DataBind();
            ListQuyDanh.Items.Insert(0, new ListItem("Ông", "0"));
            ListQuyDanh.Items.Insert(0, new ListItem("Bà", "1"));
            //ListCart.DataSource = dt;
            //ListCart.DataBind();
           
            if (Session["user"] != null)
            {
                Account acc = accountController.getByEmail(Session["user"].ToString());
                txtDiaChi.Text = acc.Address;
                txtEmail.Text = acc.Email;
                txtSDT.Text = acc.Phone;
                txtHoTen.Text = acc.Fullname;
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
            cartController.DeleteTable();
            Response.Redirect("ThanhToan.aspx");
        }

        protected void btnHuyTour_Click(object sender, EventArgs e)
        {
            LinkButton btn = sender as LinkButton;
            int idDel = Convert.ToInt32(btn.CommandArgument.ToString());
            string sql = "UPDATE dbo.CART_MEMORY SET sl -= 1 WHERE DETAIL_ID =" + idDel;
            string sql2 = "select sl from cart_memory where detail_id=" + idDel;
            conn.Open();
            connectDB.ExecutedNonQuery(sql);
            DataTable dt = connectDB.getTable(sql2);
            if(Int32.Parse(dt.Rows[0][0].ToString()) == 0)
            {
                string sqlDel = "delete from cart_memory where detail_id =" + idDel;
                connectDB.ExecutedNonQuery(sqlDel);
            }
            Response.Redirect("CartDetail.aspx");
            conn.Close();
           
        }
    }
}