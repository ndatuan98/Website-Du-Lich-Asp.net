using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using AspWebDuLich.DTO;
using AspWebDuLich.Controllers;
using AspWebDuLich.Models;
namespace BTL1.Admin.Page
{
    public partial class CreateUser : System.Web.UI.Page
    {
        AccountController acount = new AccountController();
        ConnectDB connectDB = new ConnectDB();
        Account account = new Account();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        //Mã hoá MD5
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
        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            try
            {
                account.Fullname = txtFullname.Text.Trim();
                account.Phone = txtPhone.Text.Trim();
                account.Address = txtAdress.Text.Trim();
                account.Email = txtEmail.Text.Trim();
                account.Pass = txtPass.Text;
                string passMD5 = EncodeMD5(account.Pass); 
                account.DateOfBirth = txtDateOfBirth.Text.Trim();
                account.Id = Convert.ToInt32(txtId.Text.Trim());
                string rePass = txtRepass.Text.Trim();
                if(account.Pass != rePass)
                {
                    txtThongbao.Text = "Mật khẩu không trùng khớp!";
                    txtThongbao.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    if(account.Pass == "" || rePass == "")
                    {
                        txtThongbao.Text = "Mật khẩu không được để trống!";
                        txtThongbao.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        string sql = "SELECT *FROM dbo.ACCOUNT WHERE ID = " + account.Id;
                        DataTable dt = connectDB.getTable(sql);
                        if(dt.Rows.Count >= 1)
                        {
                            txtThongbao.Text = "Mã toàn khoản đã tồn tại! Vui lòng nhập lại!";
                            txtThongbao.ForeColor = System.Drawing.Color.Red;
                        }
                        else
                        {
                            acount.CreateAccount(account.Id, account.Email, account.Fullname, passMD5, account.Phone, account.DateOfBirth, account.Address);
                            txtThongbao.Text = "Tạo tài khoản thành công!";
                            txtThongbao.ForeColor = System.Drawing.Color.LightGreen;
                        }
                        
                    }
                    
                }
                
            }
            catch(Exception ex)
            {
                txtThongbao.Text = "Tạo tài khoản thất bại do giá trị của 'Mã tài khoản quá' lớn!";
                txtThongbao.ForeColor = System.Drawing.Color.Red;
            }
           
        }
    }
}