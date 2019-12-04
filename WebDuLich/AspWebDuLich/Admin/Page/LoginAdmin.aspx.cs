using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;

namespace BTL1.Page
{
    public partial class LoginAdmin : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        //Mã hoá mật khẩu theo MD5
        private string EncodeMD5(string pass)

        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] bs = System.Text.Encoding.UTF8.GetBytes(pass);
            bs = md5.ComputeHash(bs);
            System.Text.StringBuilder s = new System.Text.StringBuilder();
            foreach (byte b in bs)
            {
                s.Append(b.ToString("x1").ToLower());
            }
            pass = s.ToString();
            return pass;
        }
        
        //Kiểm tra đăng nhập
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string strConn = @"Data Source=DESKTOP-D5N4DEM\SQLEXPRESS;Initial Catalog=QLBH;Integrated Security=True";
            SqlConnection conn = new SqlConnection(strConn); conn.Open();
            string userName = txtUserName.Text.Trim();
            string pass = txtPassword.Text.Trim();
            string passWord = EncodeMD5(pass);
            string sql = "select count(1) from Users where username = @username and password = @password";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@username", userName);
            cmd.Parameters.AddWithValue("@password", passWord);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            if (i > 0)
            {
                Response.Redirect("Admin.aspx");
            }
            else
            {
                txtThongBao.Text = "Tài khoản hoặc mật khẩu không chính xác!";
                txtThongBao.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}