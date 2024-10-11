package hardware.service.booking.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hardware.service.booking.DAO.UserDaoImpl;
import hardware.service.booking.DTO.ForgotPasswordDto;
import hardware.service.booking.DTO.UserDto;
import hardware.service.booking.DTO.UserEmailDto;
import hardware.service.booking.DTO.UserLoginDto;
import hardware.service.booking.servicelayer.GetOtp;
import hardware.service.booking.servicelayer.SendMessage;
import hardware.service.booking.servicelayer.ValidateOtp;
import hardware.service.booking.servicelayer.Validation;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class LoginController {
	
	
	private UserDaoImpl userDaoImpl = new UserDaoImpl();
	
	private Validation validateLogin = new Validation();
	
	private SendMessage message = new SendMessage();
	
	private GetOtp getOtp = new GetOtp();
	
	private ValidateOtp validateOtp = new ValidateOtp();
	
	private String otp;
	
	private String passWord;
	
	@RequestMapping("/login")
	public String getLogin(@ModelAttribute("userLogin") UserLoginDto user) {
		
		
		return "login";
	}
	
	@RequestMapping("/login-page")
	public String getLoginPage(@ModelAttribute("userLogin") UserLoginDto user) {
		
		
		return "login-page";
	}
	
	@RequestMapping("/process-login") 
	public String processLogin(@Valid @ModelAttribute("userLogin") UserLoginDto user,BindingResult result,HttpSession session,Model model,@RequestParam("user") String userType) 
	{
		
		if(result.hasErrors())
		{
			
			return "login";
		}
		
		if(userType.equals("user"))
		{
//			try {
				System.out.println("Hello   Srinu");
				UserLoginDto userInfo = userDaoImpl.getUserDetails(user.getEmail());
				
				if(userInfo==null)
				{
					model.addAttribute("errorMessage","Your username or password is invalid");
					return "login";
				}
				
				if(!validateLogin.validateLogin(user,userInfo))
				{
					model.addAttribute("errorMessage","Your username or password is invalid");
					return "login";
				}
				
				session.setAttribute("email",user.getEmail());
				session.setAttribute("userName",user.getUserName());
				session.setMaxInactiveInterval(1800);
				
				model.addAttribute(session.getAttribute("userName"));
				
				return "homepage";	
//			}
			
//			catch(Exception e) {
//				model.addAttribute("errorMessage","Your username or password is invalid");
//				return "login";
//			}
		}
		else
		{
//			try {
				
				UserLoginDto userInfo = userDaoImpl.getAdminDetails(user.getEmail());
				
				if(userInfo==null)
				{
					model.addAttribute("errorMessage","Your username or password is invalid");
					return "login";
				}
				
				if(!validateLogin.validateLogin(user,userInfo))
				{
					model.addAttribute("errorMessage","Your username or password is invalid");
					return "login-page";
				}
				
				session.setAttribute("email",user.getEmail());
				session.setAttribute("userName",user.getUserName());
				session.setMaxInactiveInterval(1800);
				
				int totalCount = userDaoImpl.getCount();
				model.addAttribute("totalCount",totalCount);
				
				int completedCount = userDaoImpl.getCompletedCount();
				model.addAttribute("completedCount",completedCount);
				
				int pendingCount = userDaoImpl.getPendingCount();
				model.addAttribute("pendingCount",pendingCount);
				
				return "e-homepage";	
//			}
			
//			catch(Exception e) {
//				model.addAttribute("errorMessage","Your username or password is invalid");
//				return "login-page";
//			}
			
		}
			
		
	}
	
	@RequestMapping("/forgot-password")
	public String getForgotPasswordPage()
	{
		return "forgot-password";
	}
	
	@RequestMapping("/send-forgot-password-otp")
	public String sendForgotasswordOtp(@Valid @ModelAttribute("forgotPassword") ForgotPasswordDto userForgotPassword,UserEmailDto user,Model model)
	{ 
		
		UserLoginDto userInfo = userDaoImpl.getUserDetails(userForgotPassword.getEmail());
		
		if(userInfo==null)
		{
			model.addAttribute("userDoesNotExist","Email not found please enter a valid email");
			return "forgot-password";
		}
		
		passWord = userForgotPassword.getPassword();
		
		otp = getOtp.getOtp();
		
		String text = "Your Otp : " + otp;
		
		user.setTo(userForgotPassword.getEmail());	
		user.setBody(text);
		
		message.send(user);
		
		return "forgot-password-otp";
	}
	
	@RequestMapping("/process-forgot-password")
	public String processForgotPassword(@Valid @ModelAttribute("forgotPassword") ForgotPasswordDto userForgotPassword,BindingResult result,Model model) {
		
		if(result.hasErrors())
		{
				
			return "forgot-password-otp";
		}
		
		if(!passWord.equals(userForgotPassword.getPassword()))
		{
			model.addAttribute("inValidPassword","Passwords do not match, Please ensure both passwords are identical");
			return "forgot-password-otp";
		}
		
		try {
			
			if(!validateOtp.valid(otp,userForgotPassword.getOtp()))
			{
				model.addAttribute("invalid","invalid otp");
				return "register-password-otp";
			}
			
			userDaoImpl.updatePassword(userForgotPassword);
			
		}
		catch(Exception e) {
			
			
		}
		return "update-successful";
	}
	
}
