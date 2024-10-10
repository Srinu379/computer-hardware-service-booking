package hardware.service.booking.DAO;

import java.util.Properties;

import org.springframework.mail.javamail.JavaMailSenderImpl;

public class JavaMailSenderApi {

	public JavaMailSenderImpl getJavaMailApi()
	{
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		mailSender.setHost("smtp.gmail.com");
		mailSender.setUsername("2210030391@klh.edu.in");
		mailSender.setPassword("9121720569");
		mailSender.setPort(587);
		
		Properties properties = mailSender.getJavaMailProperties();
		properties.put("mail.smtp.auth","true");
		properties.put("mail.smtp.starttls.enable","true");
		
		return mailSender;
	}

}
