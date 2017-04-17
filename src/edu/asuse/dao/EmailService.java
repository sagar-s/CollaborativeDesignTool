package edu.asuse.dao;
import org.springframework.mail.SimpleMailMessage;

public interface EmailService {
	public boolean sendEmail(SimpleMailMessage message); 
}
