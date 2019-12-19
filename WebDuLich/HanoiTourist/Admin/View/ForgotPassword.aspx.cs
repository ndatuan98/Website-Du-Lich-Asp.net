using HanoiTourist.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HanoiTourist.Admin.View
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        AccountController ac = new AccountController();
        static bool activeForgot = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblThongbao.ForeColor = System.Drawing.Color.Red;
            txtPass.Style.Add("display", "none");
            txtRePass.Style.Add("display", "none");
        }
        protected void Forgot_Button(object sender, EventArgs e)
        {
            try
            {
                string user = txtUser.Text;
                string phone = txtPhone.Text;
                string pass = txtPass.Text;
                string repass = txtRePass.Text;
                if (activeForgot)
                {
                    if(repass == pass)
                    {
                        ac.ForgotPass(user, phone, pass);
                        Response.Redirect("Login.aspx");
                    }
                    else
                    {
                        txtPass.Style.Add("display", "inherit");
                        txtRePass.Style.Add("display", "inherit");
                        lblThongbao.Text = "Hai mật khẩu phải trùng nhau!";
                        return;
                    }
                }
                bool check = ac.CheckForgot(user, phone);
                if (check)
                {
                    activeForgot = true;
                    txtPass.Style.Add("display", "inherit");
                    txtRePass.Style.Add("display", "inherit");
                    txtUser.Style.Add("display", "none");
                    txtPhone.Style.Add("display", "none");
                    btnForgot.Text = "Xác nhận lấy lại mật khẩu";
                    //ac.ForgotPass(user, phone, "123");
                    //Response.Redirect("Login.aspx");
                }
                else
                {
                    lblThongbao.Text = "Tài khoản không tồn tại!";
                }
            }
            catch (Exception)
            {
                lblThongbao.Text = "Lỗi kết nối database!";
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}