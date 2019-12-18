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
namespace HanoiTourist.Views
{
    public partial class Detail_Tour : System.Web.UI.Page
    {
        ConnectDB connectDB = new ConnectDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            test.Text = Request.QueryString["Detail_id"].ToString();
        }
    }
}