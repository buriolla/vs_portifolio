using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Portifolio.Models;
using Portifolio.Filters;

namespace Portifolio.Controllers
{
    public class MailController : ApiController
    {
        // POST api/mail
        [ValidateModel]
        public void Post(SendMailRequest request)
        {
            
        }
    }
}
