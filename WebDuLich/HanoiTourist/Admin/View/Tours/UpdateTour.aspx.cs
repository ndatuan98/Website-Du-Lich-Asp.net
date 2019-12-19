using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HanoiTourist.Controllers;
using HanoiTourist.DTO;
using HanoiTourist.Models;
using System.Data;
using System.Data.SqlClient;

namespace HanoiTourist.Admin.View.Tours
{
    public partial class UpdateTour : System.Web.UI.Page
    {
        TourController tourController = new TourController();
        ConnectDB connectDB = new ConnectDB();
        Details_Tour tour  = new Details_Tour();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tour"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            if (!Page.IsPostBack)
            {
                ViewState["RefUrl"] = Request.UrlReferrer.ToString();
                int tourId = Convert.ToInt32(Session["ID"].ToString());
                SqlConnection conn = connectDB.getConnection();
                conn.Open();
                string sql = "select  * from DETAILS_TOUR where id = @id";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@ID", Session["ID"]);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    //txtEmail.Text = reader["Email"].ToString();
                    //txtFullname.Text = reader["Fullname"].ToString();
                    //txtPhone.Text = reader["Phone"].ToString();
                    //txtDateOfBirth.Text = reader["Date_OF_Birth"].ToString();
                    //txtAdress.Text = reader["ADDRESS"].ToString();
                }
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    account.Id = Convert.ToInt32(Session["ID"].ToString());
            //    SqlConnection con = connectDB.getConnection();
            //    account.Fullname = txtFullname.Text.Trim();
            //    account.Phone = txtPhone.Text.Trim();
            //    account.Address = txtAdress.Text.Trim();
            //    account.Email = txtEmail.Text.Trim();
            //    account.Pass = txtPass.Text;
            //    account.DateOfBirth = txtDateOfBirth.Text.Trim();
            //    string repass = txtRepass.Text.Trim();
            //    if (account.Pass != repass)
            //    {
            //        txtThongbao.Text = "2 mật khẩu phải trùng nhau! Vui lòng nhập lại.";
            //        txtThongbao.ForeColor = System.Drawing.Color.Red;
            //    }
            //    else
            //    {
            //        if (account.Pass == "" || repass == "")
            //        {
            //            txtThongbao.Text = "Vui lòng nhập mật khẩu.";
            //            txtThongbao.ForeColor = System.Drawing.Color.Red;
            //        }
            //        else
            //        {
            //            ac.Update(account.Id, account.Email, account.Fullname, account.Pass, account.Phone, account.DateOfBirth, account.Address);
            //            Response.Redirect("Index.aspx");
            //        }

            //    }

            //}
            //catch (Exception ex)
            //{

            //}
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            object refUrl = ViewState["RefUrl"];
            if (refUrl != null)
                Response.Redirect((string)refUrl);
        }
    }
}