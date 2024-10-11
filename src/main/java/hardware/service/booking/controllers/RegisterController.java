package hardware.service.booking.controllers;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import hardware.service.booking.DAO.UserDaoImpl;
import hardware.service.booking.DTO.UserDto;
import hardware.service.booking.DTO.UserEmailDto;
import hardware.service.booking.DTO.UserLoginDto;
import hardware.service.booking.servicelayer.GetOtp;
import hardware.service.booking.servicelayer.SendMessage;
import hardware.service.booking.servicelayer.ValidateOtp;
import jakarta.validation.Valid;

@Controller
public class RegisterController {
	
	private UserDaoImpl userDaoImpl = new UserDaoImpl();
	
	private GetOtp getOtp = new GetOtp();
	
	private ValidateOtp validateOtp = new ValidateOtp();
	
	private SendMessage message = new SendMessage();
	
	private String otp;
	
	private String passWord;
	
	@RequestMapping("/")
	public String getLandingPage() {
		
		return "landing-page";
	}
	
	@RequestMapping("/register")
	public String getRegister(@ModelAttribute("userRegistration") UserDto userDto) {
		
		return "register";
	}
	
	@RequestMapping("/send-otp")
	public String getRegisterPage(@ModelAttribute("userRegistration") UserDto userDto,UserEmailDto user,Model model) {
		
		UserLoginDto userLoginDto = userDaoImpl.getUserDetails(userDto.getEmail());
		
		if(userLoginDto!=null)
		{
			model.addAttribute("userExists","This email address is already registered");
			return "register";
		}
		
		passWord = userDto.getPassWord();
		
		otp = getOtp.getOtp();
		
		String text = "Your Otp : " + otp;
		
		user.setTo(userDto.getEmail());	
		user.setBody(text);
		
		message.send(user);
		
		return "register-otp";
	}
	
	@RequestMapping("/process-register")
	public String registrationSuccess(@Valid @ModelAttribute("userRegistration") UserDto userDto,BindingResult result,Model model) {
		
		if(result.hasErrors())
		{
				
			return "register-otp";
		}
		
		if(!passWord.equals(userDto.getPassWord()))
		{
			model.addAttribute("inValidPassword","Passwords do not match, Please ensure both passwords are identical");
			return "register-otp";
		}
		
		try {
			
			if(!validateOtp.valid(otp,userDto.getOtp()))
			{
				model.addAttribute("invalid","invalid otp");
				return "register-otp";
			}
				userDaoImpl.insert(userDto);
			
		}
		catch(Exception e) {
			
			
		}
		
		return "registration-success";
	}
}
