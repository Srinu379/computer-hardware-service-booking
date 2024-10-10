	package hardware.service.booking.DTO;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public class UserBookDto {

	@Email(message="Please enter a valid email address")
	@NotBlank(message="your email cannot be blank")
	private String email;
	
	@NotBlank(message="your username cannot be blank")
	@Size(min=3,max=30,message="Your username should be in between 3 and 30")
	private String userName;

	private String issue;
	
	@Size(min=8,max=50,message="Your description should be in between 8 and 50")
	private String description;
	
	
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
	
	public String getIssue() {
		return issue;
	}

	public void setIssue(String issue) {
		this.issue = issue;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}	

}
