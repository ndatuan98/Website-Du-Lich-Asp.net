using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using AspWebDuLich.DTO;
using AspWebDuLich.Controllers;
using AspWebDuLich.Models;
namespace BTL1.Admin.Page
{
    public partial class ListUser : System.Web.UI.Page
    {
        ConnectDB connect = new ConnectDB();
        Account account = new Account();
        AccountController accountController = new AccountController();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = connect.getConnection();
            string sql = "SELECT *FROM dbo.ACCOUNT";
            DataTable dt = new DataTable();
            dt = connect.getTable(sql);
            DanhSachUser.DataSource = dt;
            DanhSachUser.DataBind();
        }

        protected void DanhSachUser_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DanhSachUser_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int userId = Convert.ToInt32(DanhSachUser.DataKeys[e.NewEditIndex].Value);
            Session["ID"] = userId;
            Response.Redirect("UpdateUser.aspx");
        }

        protected void DanhSachUser_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                account.Id = Convert.ToInt32(DanhSachUser.DataKeys[e.RowIndex].Value);
                Session["ID"] = account.Id;
                accountController.DeleteAccount(account.Id);
                Response.Write("<script>alert('Xoá thành công')</script>");
                Response.Redirect("ListUser.aspx");
            }
            catch(Exception ex)
            { }
            
        }
    }
}