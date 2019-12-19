using HanoiTourist.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HanoiTourist.Admin.View
{
    public partial class Login : System.Web.UI.Page
    {
        AccountController ac = new AccountController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                string user = txtUser.Text;
                string pass = txtPass.Text;
                int check = ac.Login(user, pass);
                if (check == 1)
                {
                    Session["user"] = txtUser.Text;
                    Response.Redirect("Accounts/Index.aspx");
                }
                else if(check == 0)
                {
                    Session["user"] = txtUser.Text;
                    Response.Redirect("../../Views/Home.aspx");
                }
                else
                {
                    lblThongbao.Text = "Tài khoản hoặc mật khẩu không chính xác!";
                    lblThongbao.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch(Exception)
            {
                lblThongbao.Text = "Lỗi kết nối database";
                lblThongbao.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
        protected void GoHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("../../Views/Home.aspx");
        }
    }
}