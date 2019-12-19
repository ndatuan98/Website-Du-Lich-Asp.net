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
    public partial class ListTour : System.Web.UI.Page
    {
        ConnectDB connect = new ConnectDB();
        Details_Tour tour = new Details_Tour();

        TourController tourController = new TourController();
        protected void Page_Load(object sender, EventArgs e)
        {
            Hienthi();
        }
        public void Hienthi()
        {
            SqlConnection conn = connect.getConnection();
            string sql = "SELECT *FROM dbo.DETAILS_TOUR";
            DataTable dt = new DataTable();
            dt = connect.getTable(sql);
            DanhSachTour.DataSource = dt;
            DanhSachTour.DataBind();
        }
        protected void DanhSachTour_Editing(object sender, GridViewEditEventArgs e)
        {
            int tourId = Convert.ToInt32(DanhSachTour.DataKeys[e.NewEditIndex].Value);
            Session["ID"] = tourId;
            Response.Redirect("UpdateTour.aspx");
        }
        protected void DanhSachTour_Delete(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                tour.Id = Convert.ToInt32(DanhSachTour.DataKeys[e.RowIndex].Value);
                Session["ID"] = tour.Id;
                tourController.DeleteTour(tour.Id);
                Response.Write("<script>alert('Xoá thành công')</script>");
                Response.Redirect("Index.aspx");
            }
            catch (Exception ex)
            {

            }
        }
    }
}