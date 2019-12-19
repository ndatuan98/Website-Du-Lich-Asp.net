using HanoiTourist.Controllers;
using HanoiTourist.DTO;
using HanoiTourist.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HanoiTourist.Views
{
    public partial class ProfileAcc : System.Web.UI.Page
    {
        AccountController ac = new AccountController();
        static Account acc = new Account();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] == null)
            {
                Response.Redirect("../Admin/View/Login.aspx");
            }
            if (!IsPostBack)
            {
                ViewState["RefUrl"] = Request.UrlReferrer.ToString();
                txtEmail.Enabled = false;
                txtEmail.Text = Session["user"].ToString();
                acc = ac.getByEmail(Session["user"].ToString());
                txtFullname.Text = acc.Fullname;
                txtPhone.Text = acc.Phone;
                txtBirthdate.Text = acc.DateOfBirth;
                txtAddress.Text = acc.Address;
            }
        }
        protected void Update(object sender, EventArgs e)
        {
            try
            {
                if (txtPass.Text != txtRePass.Text)
                {
                    lblThongbao.Text = "Mật khẩu phải trùng khớp";
                    lblThongbao.ForeColor = System.Drawing.Color.Red;
                }
                else 
                {
                    if (ac.EncodeMD5(txtPass.Text) != acc.Pass)
                    {
                        lblThongbao.Text = "Sai mật khẩu"+ ac.EncodeMD5(txtPass.Text)+ "===" + acc.Pass;
                        lblThongbao.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        ac.Update(acc.Id, acc.Email, txtFullname.Text, acc.Pass, txtPhone.Text, txtBirthdate.Text, txtAddress.Text, acc.Is_Admin);
                        lblThongbao.Text = "Cập nhật thông tin thành công!";
                        lblThongbao.ForeColor = System.Drawing.Color.Blue;
                    }
                }
            }
            catch (Exception)
            {
                lblThongbao.Text = "Lỗi kết nối CSDL!";
                lblThongbao.ForeColor = System.Drawing.Color.Red;
            }
        }
        protected void ChangePass(object sender, EventArgs e)
        {
            try
            {
                if (txtNewPass.Text != txtReNewPass.Text)
                {
                    lblChangePass.Text = "Mật khẩu mới không khớp";
                    lblChangePass.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    if (ac.EncodeMD5(txtOldPass.Text) != acc.Pass)
                    {
                        lblChangePass.Text = "Mật khẩu cũ không đúng";
                        lblChangePass.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        ac.Update(acc.Id, acc.Email, acc.Fullname, ac.EncodeMD5(txtNewPass.Text), acc.Phone, acc.DateOfBirth, acc.Address, acc.Is_Admin);
                        lblChangePass.Text = "Thay đổi mật khẩu thành công";
                        lblChangePass.ForeColor = System.Drawing.Color.Blue;
                    }
                }
            }
            catch (Exception)
            {
                lblChangePass.Text = "Lỗi kết nối CSDL";
                lblChangePass.ForeColor = System.Drawing.Color.Red;
            }
        }
        protected void Cancel(object sender, EventArgs e)
        {
            object refUrl = ViewState["RefUrl"];
            if (refUrl != null)
                Response.Redirect((string)refUrl);
        }
    }
}