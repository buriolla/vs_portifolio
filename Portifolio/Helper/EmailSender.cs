using System;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace Portifolio.Helper
{
    public class EmailSender
    {
        private string fromEmailAdress = string.Empty;
        private string smtpHost = string.Empty;
        private string emailPassword = string.Empty;
        private int smtpPort = 0;        

        public EmailSender()
        {
            fromEmailAdress = ConfigurationManager.AppSettings["fromEmailAdress"];
            smtpHost = ConfigurationManager.AppSettings["smtpHost"];
            smtpPort = Convert.ToInt32(ConfigurationManager.AppSettings["smtpPort"]);
            emailPassword = ConfigurationManager.AppSettings["emailPassword"];
        }

        public void SendEmail(string reciver, string subject, string body)
        {
            MailMessage msg = new MailMessage();

            msg.From = new MailAddress(fromEmailAdress);
            msg.To.Add(reciver);
            msg.Subject = subject;
            msg.Body = body;
            msg.IsBodyHtml = true;

            SmtpClient client = new SmtpClient();
            client.UseDefaultCredentials = true;
            client.Host = smtpHost;
            client.Port = smtpPort;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.Credentials = new NetworkCredential(fromEmailAdress, emailPassword);
            client.Timeout = 20000;

            try
            {
                client.Send(msg);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                msg.Dispose();
            }
        }
    }
}