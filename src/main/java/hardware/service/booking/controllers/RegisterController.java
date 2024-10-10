package hardware.service.booking.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	private int otp;
	
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
			model.addAttribute("userExists","already registered with these email");
			return "register";
		}
		
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
				
			return "register";
		}
		
		try {
			
			if(!validateOtp.valid(otp,userDto.getOtp()))
			{
				model.addAttribute("invalid","invalid otp");
				return "register";
			}
				userDaoImpl.insert(userDto);
			
		}
		catch(Exception e) {
			
			
		}
		
		return "registration-success";
	}
}
