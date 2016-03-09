using System.Web.Http;
using Portifolio.Filters;
using Portifolio.Helper;
using Portifolio.Models;

namespace Portifolio.Controllers
{
    public class MailController : ApiController
    {
        // POST api/mail
        [ValidateModel]
        [ValidateSessionToken]
        public void Post(SendMailRequest request)
        {
            //SendEmails(request);
        }

        private void SendEmails(SendMailRequest request)
        {
            string confirmationEmailSubject = string.Empty;
            string confirmationEmailBody = string.Empty;
            string contactEmailSubject = string.Empty;
            string contactEmailBody = string.Empty;

            if (!string.IsNullOrEmpty(request.lang))
            {
                if (request.lang.Equals("pt-BR"))
                {
                    confirmationEmailSubject = PortugueseResource.ConfirmationEmailSubject;
                    confirmationEmailBody = string.Format(PortugueseResource.ConfirmationEmailBody, request.contactName);
                    contactEmailSubject = PortugueseResource.ContactEmailSubject;
                    contactEmailBody = string.Format(PortugueseResource.ContactEmailBody, request.contactName, request.contactEmailAdress, request.contactMessage);
                }
                else
                {
                    confirmationEmailSubject = EnglishResource.ConfirmationEmailSubject;
                    confirmationEmailBody = string.Format(EnglishResource.ConfirmationEmailBody, request.contactName);
                    contactEmailSubject = EnglishResource.ContactEmailSubject;
                    contactEmailBody = string.Format(EnglishResource.ContactEmailBody, request.contactName, request.contactEmailAdress, request.contactMessage);
                }
            }
            else
            {
                confirmationEmailSubject = EnglishResource.ConfirmationEmailSubject;
                confirmationEmailBody = string.Format(EnglishResource.ConfirmationEmailBody, request.contactName);
                contactEmailSubject = EnglishResource.ContactEmailSubject;
                contactEmailBody = string.Format(EnglishResource.ContactEmailBody, request.contactName, request.contactEmailAdress, request.contactMessage);
            }

            SendConfirmationEmail(request, confirmationEmailSubject, confirmationEmailBody);
            SendContactEmail(request, contactEmailSubject, contactEmailBody);
        }

        private void SendConfirmationEmail(SendMailRequest request, string subject, string body)
        {
            EmailSender sender = new EmailSender();
            sender.SendEmail(request.contactEmailAdress, subject, body);
        }

        private void SendContactEmail(SendMailRequest request, string subject, string body)
        {
            EmailSender sender = new EmailSender();
            sender.SendEmail("b.buriolla@gmail.com", subject, body);
        }
    }
}
