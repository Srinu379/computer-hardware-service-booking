package hardware.service.booking.DTO;

import java.util.UUID;

public class UserMessageSendDto {

	private String id = UUID.randomUUID().toString();
	private String userId;
	private String message;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getMessage() {
		return message;
	}
	
	public void setMessage(String message) {
		this.message = message;
	}
	
	

}
