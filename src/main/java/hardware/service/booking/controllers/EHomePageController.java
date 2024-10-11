package hardware.service.booking.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import hardware.service.booking.DAO.UserDaoImpl;
import hardware.service.booking.DTO.UserEmailDto;
import hardware.service.booking.DTO.UserIssueDto;
import hardware.service.booking.DTO.UserLoginDto;
import hardware.service.booking.servicelayer.SendMessage;
import jakarta.servlet.http.HttpSession;

@Controller
public class EHomePageController {

	private UserDaoImpl userDaoImpl = new UserDaoImpl();
	
	private SendMessage message = new SendMessage();
	
	@RequestMapping("/e-homepage")
	public String getHomePage(Model model)
	{
		
		return "e-homepage";
	}
	
	@RequestMapping("/view-all-issues")
	public String getAllIssue(Model model)
	{
		
		List<UserIssueDto> users = userDaoImpl.getUserAllDetails();
		
		model.addAttribute("users",users);
		
		return "issues";
	}
	
	@RequestMapping("/view-completed-issues")
	public String getCompletedIssue(Model model)
	{
		List<UserIssueDto> users = userDaoImpl.getUserAllDetailsByCompletedStatus();
		
		model.addAttribute("users",users);
		
		return "issues";
	}
	
	@RequestMapping("/view-pending-issues")
	public String getPendingIssue(Model model)
	{
		
		List<UserIssueDto> users = userDaoImpl.getUserAllDetailsByPendingStatus();
		
		model.addAttribute("users",users);
		
		return "issues";
	}
	
	@RequestMapping("/send-email")
	public String getEmailPage()
	{
	
		return "email";
	}
	
	@RequestMapping("/send-email-success")
	public String getEmailSuccessPage(UserEmailDto user)
	{
		
		message.send(user);
		
		return "email-successful";
	}
	
	@RequestMapping("/profile-page")
	public String getPerformancePage(Model model,HttpSession session)
	{
		String email = (String) session.getAttribute("email");
		
		if(email==null)
		{
			return "e-homepage";
		}
		
		UserLoginDto user = userDaoImpl.getUserDetails(email);
		
		model.addAttribute("users",user);
		
		return "profile";
	}
	
	@RequestMapping("/edit-page")
	public String getEditPage()
	{
		
		return "editpage";
	}

}
