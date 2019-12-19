using HanoiTourist.Controllers;
using HanoiTourist.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HanoiTourist.Admin.View
{
    public partial class AccountInfo : System.Web.UI.Page
    {
        AccountController ac = new AccountController();
        static Account acc = new Account();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            if (!Page.IsPostBack)
            {
                ViewState["RefUrl"] = Request.UrlReferrer.ToString();
                acc = ac.getByEmail(Session["user"].ToString());
                txtEmail.Enabled = false;
                txtEmail.Text = acc.Email;
                txtFullname.Text = acc.Fullname;
                txtPhone.Text = acc.Phone;
                txtDateOfBirth.Text = acc.DateOfBirth;
                txtAdress.Text = acc.Address;
            }
        }
        protected void Update_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtPass.Text != txtRepass.Text)
                {
                    txtThongbao.Text = "Hai mật khẩu không trùng nhau.";
                    txtThongbao.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    if (ac.EncodeMD5(txtPass.Text) != acc.Pass)
                    {
                        txtThongbao.Text = "Mật khẩu không đúng.";
                        txtThongbao.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        ac.Update(acc.Id, acc.Email, txtFullname.Text, acc.Pass, txtPhone.Text, txtDateOfBirth.Text, txtAdress.Text, acc.Is_Admin);
                        txtThongbao.Text = "Cập nhật thông tin thành công.";
                        txtThongbao.ForeColor = System.Drawing.Color.Blue;
                    }
                }
            }
            catch (Exception)
            {
                txtThongbao.Text = "Lỗi kết nối CSDL.";
                txtThongbao.ForeColor = System.Drawing.Color.Red;
            }
        }
        protected void Back_Click(object sender, EventArgs e)
        {
            object refUrl = ViewState["RefUrl"];
            if (refUrl != null)
                Response.Redirect((string)refUrl);
        }
    }
}