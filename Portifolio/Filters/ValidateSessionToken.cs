using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http.Controllers;
using System.Web.Http.Filters;

namespace Portifolio.Filters
{
    public class ValidateSessionToken : ActionFilterAttribute
    {
        public override void OnActionExecuting(HttpActionContext filterContext)
        {
            bool containsSessionID = filterContext.Request.Headers.Contains("SessionID");

            if (!containsSessionID)
            {
                filterContext.Response = filterContext.Request.CreateErrorResponse(
                    HttpStatusCode.BadRequest, "Invalid Request");
                
                return;
            }

            if (containsSessionID)
            {
                string sessionID = filterContext.Request.Headers.GetValues("SessionID").FirstOrDefault();

                if (!string.IsNullOrEmpty(sessionID))
                {

                    if (HttpContext.Current.Session["SessionID"] != null)
                    {
                        string storedSessionID = HttpContext.Current.Session["SessionID"].ToString();

                        if (!string.IsNullOrEmpty(storedSessionID))
                        {
                            if (!storedSessionID.Equals(sessionID))
                            {
                                filterContext.Response = filterContext.Request.CreateErrorResponse(
                                HttpStatusCode.BadRequest, "Invalid Request");
                                return;
                            }
                        }
                        else
                        {
                            filterContext.Response = filterContext.Request.CreateErrorResponse(
                                HttpStatusCode.BadRequest, "Invalid Request");
                            return;
                        }
                    }
                    else
                    {
                        filterContext.Response = filterContext.Request.CreateErrorResponse(
                                HttpStatusCode.BadRequest, "Invalid Request");
                        return;
                    }
                }
                else
                {
                    filterContext.Response = filterContext.Request.CreateErrorResponse(
                    HttpStatusCode.BadRequest, "Invalid Request");

                    return;
                }

            }
        }
    }
}