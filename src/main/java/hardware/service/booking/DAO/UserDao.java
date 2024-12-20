package hardware.service.booking.DAO;

import java.util.List;

import hardware.service.booking.DTO.ForgotPasswordDto;
import hardware.service.booking.DTO.UpdatePasswordDto;
import hardware.service.booking.DTO.UserDto;
import hardware.service.booking.DTO.UserIdDto;
import hardware.service.booking.DTO.UserIssueDto;
import hardware.service.booking.DTO.UserLoginDto;
import hardware.service.booking.DTO.UserMessageSendDto;
import hardware.service.booking.DTO.UserServiceDto;

public interface UserDao {
	
	void insert(UserDto user);
	
	void insert(UserIdDto user);
	
	void insert(UserMessageSendDto user);

	UserLoginDto getUserDetails(String email);
	
	List<UserIssueDto> getUserAllDetails();
	
	UserLoginDto getAdminDetails(String email);
	
	UserIdDto getUserId(String email);
	
	UserServiceDto getUserServiceId(String email);
	
	List<UserServiceDto> getUserServiceDetails(String userId);
	
	List<UserIssueDto> getUserAllDetailsByCompletedStatus();
	
	List<UserIssueDto> getUserAllDetailsByPendingStatus();
	
	List<UserIssueDto> getUserIssues(String email);
	
	int getCount();
	
	int getCompletedCount();
	
	int getPendingCount();
	
	void updatePassword(ForgotPasswordDto user);
	
	boolean changePassword(UpdatePasswordDto user);
	
	boolean setNewPassword(UpdatePasswordDto user);
}
