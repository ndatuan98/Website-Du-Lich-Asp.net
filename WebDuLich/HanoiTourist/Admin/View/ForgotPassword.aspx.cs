using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HanoiTourist.Admin.View
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Forgot_Button(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}