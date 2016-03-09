using System;
using System.Web;
using System.Web.Mvc;

namespace Portifolio.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            string sessionID = Guid.NewGuid().ToString();
            HttpCookie sessionCookie = new HttpCookie("SessionID", sessionID);
            sessionCookie.Expires.AddHours(2);
            HttpContext.Response.SetCookie(sessionCookie);
            Session["SessionID"] = sessionID;
            
            return View();
        }

    }
}
