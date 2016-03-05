using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.ComponentModel.DataAnnotations;

namespace Portifolio.Models
{
    public class SendMailRequest
    {
        [Required]
        public string contactName { get; set; }

        [Required]
        public string contactEmailAdress { get; set; }

        [Required]
        public string contactMessage { get; set; }
    }
}