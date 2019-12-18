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
namespace HanoiTourist.Views
{
    public partial class Cart : System.Web.UI.Page
    {
        ConnectDB connectDB = new ConnectDB();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Detail_Id"]);
            string sqlHienThi = "SELECT * "+
                                "FROM dbo.DETAILS_TOUR AS  a INNER JOIN dbo.TOUR AS b on a.ID = b.DETAIL_ID "+
                                " WHERE a.ID =" + id;
            string sqlQuocGia = "SELECT id,COUNTRY_NAME FROM dbo.COUNTRIES ";
            SqlConnection conn = connectDB.getConnection();
            conn.Open();
            DataTable dt = connectDB.getTable(sqlHienThi);
            ListQuocGia.DataSource = GetDataReader(sqlQuocGia);
            ListQuocGia.DataTextField = "COUNTRY_NAME";
            ListQuocGia.DataBind();
            ListQuyDanh.Items.Insert(0, new ListItem("Ông", "0"));
            ListQuyDanh.Items.Insert(0, new ListItem("Bà", "1"));
            ListCart.DataSource = dt;
            ListCart.DataBind();

        }

        public SqlDataReader GetDataReader(string sql)
        {
            SqlConnection conn = connectDB.getConnection();
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            return reader;
        }
    }
}