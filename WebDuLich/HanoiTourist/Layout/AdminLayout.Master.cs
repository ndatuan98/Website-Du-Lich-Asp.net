using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HanoiTourist.Layout
{
    public partial class AdminLayout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            else {
                lblUser.Text = Session["user"].ToString();
            }
            lbTC.Text = Application["SLTruyCap"].ToString();
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Page_Load(sender, e);
        }
    }
}