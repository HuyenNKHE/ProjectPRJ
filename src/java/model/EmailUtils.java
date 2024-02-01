package model;


import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import model.Email;

public class EmailUtils {
	public static void send(Email email) 
			throws Exception {
		Properties prop = new Properties();
		//pass: y s l h h s p u w k l h z k n w
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", "587");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.starttls.enable", "true");
		
		Session session = Session.getInstance(prop, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(email.getFrom(), email.getFromPassword());
			}
		});
		try {
			Message message = new MimeMessage(session);
			
			message.setFrom(new InternetAddress(email.getFrom()));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email.getTo()));
			message.setSubject(email.getSubject());
			message.setContent(email.getContent(), "text/html; charset=utf-8"); 
			
			Transport.send(message);
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
			throw e;
		}
	}
}
