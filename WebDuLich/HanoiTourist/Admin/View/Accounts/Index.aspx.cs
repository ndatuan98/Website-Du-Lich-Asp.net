using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using HanoiTourist.Controllers;
using HanoiTourist.DTO;
using HanoiTourist.Models;
namespace HanoiTourist.Admin.View
{
    public partial class ListUser : System.Web.UI.Page
    {
        ConnectDB connect = new ConnectDB();
        Account account = new Account();
        AccountController accountController = new AccountController();
        void load_data()
        {
            SqlConnection conn = connect.getConnection();
            string sql = "SELECT *FROM dbo.ACCOUNT";
            DataTable dt = new DataTable();
            dt = connect.getTable(sql);
            DanhSachUser.DataSource = dt;
            DanhSachUser.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            load_data();
        }
        protected void DanhSachUser_Editing(object sender, GridViewEditEventArgs e)
        {
            int userId = Convert.ToInt32(DanhSachUser.DataKeys[e.NewEditIndex].Value);
            Session["ID"] = userId;
            Response.Redirect("UpdateUser.aspx");
        }
        protected void DanhSachUser_Delete(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                account.Id = Convert.ToInt32(DanhSachUser.DataKeys[e.RowIndex].Value);
                Session["ID"] = account.Id;
                accountController.DeleteAccount(account.Id);
                Response.Write("<script>alert('Xoá thành công')</script>");
                Response.Redirect("Index.aspx");
            }
            catch (Exception ex)
            { }
        }
        int stt = 1;
        public string get_stt()
        {
            return Convert.ToString(stt++);
        }
        protected void DanhSachUser_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DanhSachUser.PageIndex = e.NewPageIndex;   //trang hien tai
            int trang_thu = e.NewPageIndex;      //the hien trang thu may
            int so_dong = DanhSachUser.PageSize;       //moi trang co bao nhieu dong
            stt = trang_thu * so_dong + 1;
            load_data();
        }
    }
}