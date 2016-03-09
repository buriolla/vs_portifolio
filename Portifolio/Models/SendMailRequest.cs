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

        public string lang { get; set; }
    }
}