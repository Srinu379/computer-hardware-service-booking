package hardware.service.booking.DAO;


import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Component;

import hardware.service.booking.DTO.ForgotPasswordDto;
import hardware.service.booking.DTO.UpdatePasswordDto;
import hardware.service.booking.DTO.UserDto;
import hardware.service.booking.DTO.UserIdDto;
import hardware.service.booking.DTO.UserIssueDto;
import hardware.service.booking.DTO.UserLoginDto;
import hardware.service.booking.DTO.UserMessageSendDto;
import hardware.service.booking.DTO.UserServiceDto;
import hardware.service.booking.servicelayer.Validation;

@Component
public class UserDaoImpl implements UserDao{

	private JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());
	
	private Validation validation = new Validation();
	
	@Override
	public void insert(UserDto user) {
		
		String sql = "INSERT INTO users(id,email,userName,passWord) VALUES(?,?,?,?)";
		
		Object object[] = {user.getId(),user.getEmail(),user.getUserName(),user.getPassWord()};
		
		jdbcTemplate.update(sql,object);
	}
	
	@Override
	public void insert(UserIdDto user) {
		
		String sql = "INSERT INTO issues(userid,issue,description) VALUES(?,?,?)";
		
		Object object[] = {user.getId(),user.getIssue(),user.getDescription()};
		
		jdbcTemplate.update(sql,object);
	}
	
	@Override
	public void insert(UserMessageSendDto user) {
		
		String sql = "INSERT INTO messages(id,userid,message) VALUES(?,?,?)";
		
		Object object[] = {user.getId(),user.getUserId(),user.getMessage()};
		
		jdbcTemplate.update(sql,object);
	}

	@Override
	public UserLoginDto getUserDetails(String email) {
		
		String sql = "select * from users where email = ? ";
		
		try {
			
		UserLoginDto userLoginDto = jdbcTemplate.queryForObject(sql,new BeanPropertyRowMapper<UserLoginDto>(UserLoginDto.class),email);
		
		return userLoginDto;
		}
		
		catch(EmptyResultDataAccessException e) {
			
			return null;
			
		}
		
		
	}
	
	
	@Override
	public UserLoginDto getAdminDetails(String email) {
		
		String sql = "select * from Ausers where email = ? ";
		
		try {
			
		UserLoginDto userLoginDto = jdbcTemplate.queryForObject(sql,new BeanPropertyRowMapper<UserLoginDto>(UserLoginDto.class),email);
		
		return userLoginDto;
		
		}
		
		catch(EmptyResultDataAccessException e) {
			
			return null;
			
		}
		
	}

	@Override
	public UserIdDto getUserId(String email) {
		
		String sql = "select id from users where email = ? ";
		
		UserIdDto userIdDto = jdbcTemplate.queryForObject(sql,new BeanPropertyRowMapper<UserIdDto>(UserIdDto.class),email);
		
		return userIdDto;
		
	}
	
	@Override
	public UserServiceDto getUserServiceId(String email) {
		
		
		String sql = "select id from users where email = ? ";
		
		UserServiceDto userServiceDto = jdbcTemplate.queryForObject(sql,new BeanPropertyRowMapper<UserServiceDto>(UserServiceDto.class),email);
		
		return userServiceDto;
		
	}
	
	@Override
	public List<UserServiceDto> getUserServiceDetails(String userId) {
		
		String sql = "select userid as id,issue,description,createdAt,status from issues where userid = ? ";
		
		List<UserServiceDto> user = jdbcTemplate.query(sql,new BeanPropertyRowMapper<UserServiceDto>(UserServiceDto.class),userId);
		
		return user;
		
	}

	@Override
	public List<UserIssueDto> getUserAllDetails() {
		
		String sql = "select i.id,u.email,u.userName,i.issue,i.description,i.createdAt,i.status from issues i INNER JOIN users u on i.userid = u.id";
		
		List<UserIssueDto> userIssueDto = jdbcTemplate.query(sql,new BeanPropertyRowMapper<UserIssueDto>(UserIssueDto.class));
		
		return userIssueDto;
	}
	
	@Override
	public List<UserIssueDto> getUserAllDetailsByCompletedStatus() {
		
		String sql = "select i.id,u.email,u.userName,i.issue,i.description,i.createdAt,i.status from issues i INNER JOIN users u on i.userid = u.id where i.status = ?";
		
		List<UserIssueDto> userIssueDto = jdbcTemplate.query(sql,new BeanPropertyRowMapper<UserIssueDto>(UserIssueDto.class),"completed");
		
		return userIssueDto;
	}
	
	@Override
	public List<UserIssueDto> getUserAllDetailsByPendingStatus() {
		
		String sql = "select i.id,u.email,u.userName,i.issue,i.description,i.createdAt,i.status from issues i INNER JOIN users u on i.userid = u.id where i.status = ?";
		
		List<UserIssueDto> userIssueDto = jdbcTemplate.query(sql,new BeanPropertyRowMapper<UserIssueDto>(UserIssueDto.class),"pending");
		
		return userIssueDto;
	}

	@Override
	public int getCount() {
		
		System.out.println("Inside The Dao Layer");
		
		String sql = "select count(*) from issues";
		
		int count = jdbcTemplate.queryForObject(sql,Integer.class);
		
		return count;
	}

	@Override
	public int getCompletedCount() {
		
		System.out.println("Inside The Dao Layer");
		
		String sql = "select count(*) from issues where status = ?";
		
		int count = jdbcTemplate.queryForObject(sql,Integer.class,"completed");
		
		return count;
	}

	@Override
	public int getPendingCount() {
		
		System.out.println("Inside The Dao Layer");
		
		String sql = "select count(*) from issues where status = ?";
		
		int count = jdbcTemplate.queryForObject(sql,Integer.class,"pending");
		
		return count;
	}
	
	@Override
	public void updatePassword(ForgotPasswordDto user) {
		
		String sql = "update users set passWord = ? where email = ?";
		
		jdbcTemplate.update(sql,user.getPassword(),user.getEmail());
		
	}
	
	public boolean changePassword(UpdatePasswordDto userEnteredInfo) {
		
		UserLoginDto userLoginDto = getAdminDetails(userEnteredInfo.getEmail());
		
		if(!validation.validateChangePassword(userEnteredInfo,userLoginDto))
		{
			return false;
		}
		
		if(!setNewPassword(userEnteredInfo))
		{
			return false;
		}
		
		return true;
		
	}
	
	@Override
	public boolean setNewPassword(UpdatePasswordDto user) {
		
		String sql = "update ausers set passWord = ? where email = ?";
		
		int rowCount = jdbcTemplate.update(sql,user.getNewPassword(),user.getEmail());
		
		if(rowCount==0)
			return false;
		
		return true;
	}
	
	public List<UserIssueDto> getUserIssues(String email)
	{
		String sql = "select u.userName,u.id,i.description,i.issue,i.createdAt,i.status from issues i INNER JOIN users u on i.userid = u.id where u.email = ?";
		
		List<UserIssueDto> user = jdbcTemplate.query(sql,new BeanPropertyRowMapper<UserIssueDto>(UserIssueDto.class),email);
		
		return user;
	}
	
	
//	public DriverManagerDataSource getDataSource() {
//	    DriverManagerDataSource dataSource = new DriverManagerDataSource();
//	    dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
//	    dataSource.setUrl("jdbc:mysql://localhost:3306/servicebooking?useSSL=false&allowPublicKeyRetrieval=true");
//	    dataSource.setUsername("root");
//	    dataSource.setPassword("Srinu379@");
//	    return dataSource;
//	}
	
	public DriverManagerDataSource getDataSource() {
	    DriverManagerDataSource dataSource = new DriverManagerDataSource();
	    dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
	    dataSource.setUrl(System.getenv("SPRING_DATASOURCE_URL"));
	    dataSource.setUsername(System.getenv("SPRING_DATASOURCE_USERNAME"));
	    dataSource.setPassword(System.getenv("SPRING_DATASOURCE_PASSWORD"));
	    return dataSource;
	}

}
