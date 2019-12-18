using HanoiTourist.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HanoiTourist.Admin.View
{
    public partial class Register : System.Web.UI.Page
    {
        AccountController ac = new AccountController();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblThongbao.ForeColor = System.Drawing.Color.Red;
        }
        private bool valid(string email, string fullname, string pass, string repass)
        {
            if (email == "" || email == null)
            {
                lblThongbao.Text = "Email bạn nhập không đúng định dạng!";
                return false;
            }
            if(fullname == "")
            {
                lblThongbao.Text = "Tên không được để trống!";
                return false;
            }
            if (pass == "")
            {
                lblThongbao.Text = "Mật khẩu không được để trống!";
                return false;
            }
            if (repass != pass)
            {
                lblThongbao.Text = "Hai mật khẩu không trùng khớp!";
                return false;
            }
            if (ac.CheckRegister(email))
            {
                lblThongbao.Text = "Email đã được đăng ký!";
                return false;
            }
            return true;
        }
        protected void CreateAccount(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string fullname = txtFullname.Text;
            string pass = txtPass.Text;
            string repass = txtRePass.Text;
            try
            {
                if (valid(email, fullname, pass, repass))
                {
                    ac.CreateAccount(email,fullname,pass,"","","");
                    Response.Redirect("Login.aspx");
                }
            }
            catch (Exception)
            {
                lblThongbao.Text = "Lỗi kết nối database!";
            }
        }
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }
    }
}