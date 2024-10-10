package hardware.service.booking.servicelayer;

import java.util.Properties;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import hardware.service.booking.DTO.UserEmailDto;

public class SendMessage {
	
	private JavaMailSenderImpl javaMailSenderImpl = new JavaMailSenderImpl();
	
	public void send(UserEmailDto user)
	{
		
		javaMailSenderImpl.setHost("smtp.gmail.com");
		javaMailSenderImpl.setPort(587);
		javaMailSenderImpl.setUsername("2210030391@klh.edu.in");
		javaMailSenderImpl.setPassword("9121720569");
		
		Properties properties = javaMailSenderImpl.getJavaMailProperties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable","true");
		
		
		SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
		
		simpleMailMessage.setTo(user.getTo());
		simpleMailMessage.setSubject(user.getSubject());
		simpleMailMessage.setText(user.getBody());
		System.out.println("Sent");
		
		javaMailSenderImpl.send(simpleMailMessage);
		
	}

}
