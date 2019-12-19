using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace HanoiTourist
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application.Lock();
            System.IO.StreamReader sr;
            sr = new System.IO.StreamReader(Server.MapPath("Views/Count.txt"));
            string S = sr.ReadLine();
            sr.Close();
            Application.UnLock();
            Application["SLTruyCap"] = S;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["user"] = null;
            Application["SLTruyCap"] = int.Parse(Application["SLTruyCap"].ToString()) + 1;
            System.IO.StreamWriter sw;
            sw = new System.IO.StreamWriter(Server.MapPath("Count.txt"));
            sw.Write(Application["SLTruyCap"].ToString());
            sw.Close();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}