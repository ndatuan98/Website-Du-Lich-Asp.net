﻿using System;
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
namespace HanoiTourist.Views
{
    public partial class Home : System.Web.UI.Page
    {
        ConnectDB connectDB = new ConnectDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            string sqlHotTour = "SELECT b.NAME_TOUR,b.VEHICLE,a.DEPARTURE_DATE,b.ADULT_FARE,b.Image FROM dbo.TOUR a,dbo.DETAILS_TOUR b WHERE a.DETAIL_ID = b.ID";
            string sqlTourTN = "SELECT b.NAME_TOUR,b.VEHICLE,a.DEPARTURE_DATE,b.ADULT_FARE,b.Image FROM dbo.TOUR a,dbo.DETAILS_TOUR b WHERE a.DETAIL_ID = b.ID";
            string sqlTourNN = "SELECT b.NAME_TOUR,b.VEHICLE,a.DEPARTURE_DATE,b.ADULT_FARE,b.Image FROM dbo.TOUR a,dbo.DETAILS_TOUR b WHERE a.DETAIL_ID = b.ID";
            SqlConnection conn = connectDB.getConnection();
            conn.Open();
            DataTable dt = connectDB.getTable(sqlHotTour);
            DataTable dt1 = connectDB.getTable(sqlTourTN);
            DataTable dt2 = connectDB.getTable(sqlTourNN);
            ListHotTour.DataSource = dt;
            ListHotTour.DataBind();
            ListTourTN.DataSource = dt1;
            ListTourTN.DataBind();
            ListTourNN.DataSource = dt2;
            ListTourNN.DataBind();

            string sqlDiemXP = " SELECT DEPARTURE,DESTINATION,SCHEDULE_TOUR FROM dbo.DETAILS_TOUR ";
            DrDiemXuatPhat.DataSource = GetDataReader(sqlDiemXP);
            DrDiemXuatPhat.DataTextField = "DEPARTURE";
            DrDiemXuatPhat.DataValueField = "DEPARTURE";
            DrDiemXuatPhat.DataBind();

            DrDich.DataSource = GetDataReader(sqlDiemXP);
            DrDich.DataTextField = "DESTINATION";
            DrDich.DataValueField = "DESTINATION";
            DrDich.DataBind();

            DrLichTrinh.DataSource = GetDataReader(sqlDiemXP);
            DrLichTrinh.DataTextField = "SCHEDULE_TOUR";
            DrLichTrinh.DataValueField = "SCHEDULE_TOUR";
            DrLichTrinh.DataBind();

            DrKhoangGia.Items.Insert(0, new ListItem("Khoảng giá", "0"));
            DrKhoangGia.Items.Insert(1, new ListItem("Nhỏ Hơn 3 Triệu", "1"));
            DrKhoangGia.Items.Insert(2, new ListItem("Từ 3 Triệu - 10 Triệu", "2"));
            DrKhoangGia.Items.Insert(3, new ListItem("Từ 10 Triệu - 25 Triệu", "3"));
            DrKhoangGia.Items.Insert(4, new ListItem("Từ 25 Triệu - 40 Triệu", "4"));
            DrKhoangGia.Items.Insert(5, new ListItem("Trên 40 Triệu", "5"));
        }

        public SqlDataReader GetDataReader(string sql)
        {
           SqlConnection conn =  connectDB.getConnection();
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            return reader;
        }
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            string diemXP = DrDiemXuatPhat.SelectedValue.ToString();
            string dich = DrDich.SelectedValue.ToString();
            string lichTrinh = DrLichTrinh.SelectedValue.ToString();
            string ngayKhoiHanh = NgayThang.Text.Trim();
            string khoangGia = DrKhoangGia.SelectedValue.ToString();
            string chuoiTimKiem = diemXP + "," + dich + "," + lichTrinh + "," + ngayKhoiHanh + "," + khoangGia;
            Response.Redirect("SearchResult.aspx?chuoiTimKiem=" + chuoiTimKiem);
            

        }
    }
}