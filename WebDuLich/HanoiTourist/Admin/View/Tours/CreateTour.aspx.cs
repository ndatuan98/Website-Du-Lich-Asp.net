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

namespace HanoiTourist.Admin.View.Tours
{
    public partial class CreateTour : System.Web.UI.Page
    {
        TourController tourController = new TourController();
        ConnectDB connectDB = new ConnectDB();
        Details_Tour tour = new Details_Tour();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            try
            {
                tour.Code = txtCode.Text.Trim();
                tour.Departure = txtDeparture.Text.Trim();
                tour.Destination = txtDestionation.Text.Trim();
                tour.Period = txtPeriod.Text.Trim();
                tour.Vehicle = txtVeicle.Text.Trim();
                tour.Seat = Int32.Parse(txtSeats.Text);
                tour.Schedule_tour = txtChedule.Text.Trim();
                tour.Vehicle = txtVeicle.Text.Trim();
                tour.Create_date = DateTime.Parse(txtCreatedate.Text.Trim());
                tourController.CreateTour(tour.Code, tour.Departure, tour.Destination, tour.Period, tour.Vehicle, tour.Seat.ToString(), tour.Schedule_tour, tour.Vehicle, tour.Create_date.ToString());
                txtThongbao.Text = "Tạo tour thành công!";
                txtThongbao.ForeColor = System.Drawing.Color.LightGreen;
                Response.Redirect("Index.aspx");

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