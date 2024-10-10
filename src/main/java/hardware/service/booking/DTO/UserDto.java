package hardware.service.booking.DTO;

import java.util.UUID;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public class UserDto {
	
	private String id = UUID.randomUUID().toString();
	
	@Email(message="Please enter a valid email address")
	@NotBlank(message="your email cannot be blank")
	private String email;
	
	@NotBlank(message="your username cannot be blank")
	@Size(min=3,max=30,message="Your username should be in between 3 and 30")
	private String userName;
	
	@NotBlank(message="your password cannot be blank")
	@Size(min=8,message="Your password should contain atleast 8 characters")
	
	private String passWord;
	
	private int otp;
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		
		return email;
	}
	
	public void setEmail(String email) {
		
		this.email = email;
	}
	
	public String getUserName() {
		
		return userName;
	}
	
	public void setUserName(String userName) {
		
		this.userName = userName;
	}
	
	public String getPassWord() {
		
		return passWord;
	}
	
	public void setPassWord(String passWord) {
		
		this.passWord = passWord;
	}
	
	public int getOtp() {
		return otp;
	}

	public void setOtp(int otp) {
		this.otp = otp;
	}
	
}
