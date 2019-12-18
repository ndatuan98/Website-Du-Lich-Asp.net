using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HanoiTourist.DTO;
using System.Data;
using System.Data.SqlClient;
namespace HanoiTourist.Layout
{
    public partial class GUILayout : System.Web.UI.MasterPage
    {
        ConnectDB connectDB = new ConnectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = connectDB.getConnection();
            conn.Open();
            string sqlTN = "SELECT DISTINCT DESTINATION FROM dbo.DETAILS_TOUR";
            string sqlNN = "SELECT id,COUNTRY_NAME FROM dbo.COUNTRIES where id !=0";
            DataTable dt = connectDB.getTable(sqlTN);
            MenuTN.DataSource = dt;
            MenuTN.DataBind();

            DataTable dt2 = connectDB.getTable(sqlNN);
            MenuNN.DataSource = dt2;
            MenuNN.DataBind();

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Admin/View/Login.aspx");
        }
    }
}