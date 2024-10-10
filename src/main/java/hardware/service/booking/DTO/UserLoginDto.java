package hardware.service.booking.DTO;

import jakarta.validation.constraints.NotBlank;

public class UserLoginDto {
	
	@NotBlank(message="your email cannot be blank")
	private String email;
	
	@NotBlank(message="your username cannot be blank")
	private String userName;
	
	@NotBlank(message="your password cannot be blank")
	private String passWord;

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
}
