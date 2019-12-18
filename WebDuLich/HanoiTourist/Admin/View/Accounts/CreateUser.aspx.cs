using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HanoiTourist.Controllers;
using HanoiTourist.DTO;
using HanoiTourist.Models;
using System.Security.Cryptography;
using System.Data;

namespace HanoiTourist.Admin.View
{
    public partial class CreateUser : System.Web.UI.Page
    {
        AccountController acount = new AccountController();
        ConnectDB connectDB = new ConnectDB();
        Account account = new Account();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            ViewState["RefUrl"] = Request.UrlReferrer.ToString();
        }

        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            try
            {
                account.Fullname = txtFullname.Text.Trim();
                account.Phone = txtPhone.Text.Trim();
                account.Address = txtAdress.Text.Trim();
                account.Email = txtEmail.Text.Trim();
                account.Pass = txtPass.Text.Trim();
                string passMD5 = acount.EncodeMD5(account.Pass);
                account.DateOfBirth = txtDateOfBirth.Text.Trim();
                string rePass = txtRepass.Text.Trim();
                if (account.Pass != rePass)
                {
                    txtThongbao.Text = "Mật khẩu không trùng khớp!";
                    txtThongbao.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    if (account.Pass == "" || rePass == "")
                    {
                        txtThongbao.Text = "Mật khẩu không được để trống!";
                        txtThongbao.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        string sql = "SELECT *FROM dbo.ACCOUNT WHERE EMAIL = '" + account.Email + "'";
                        DataTable dt = connectDB.getTable(sql);
                        if (dt.Rows.Count >= 1)
                        {
                            txtThongbao.Text = "Tài khoản đã tồn tại";
                            txtThongbao.ForeColor = System.Drawing.Color.Red;
                        }
                        else
                        {
                            acount.CreateAccount(account.Email, account.Fullname, passMD5, account.Phone, account.DateOfBirth, account.Address);
                            txtThongbao.Text = "Tạo tài khoản thành công!";
                            txtThongbao.ForeColor = System.Drawing.Color.LightGreen;
                            Response.Redirect("Index.aspx");
                        }

                    }

                }

            }
            catch (Exception ex)
            {
                txtThongbao.Text = "Lỗi không xác định!";
                txtThongbao.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}