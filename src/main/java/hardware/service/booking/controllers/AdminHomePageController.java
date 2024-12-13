package hardware.service.booking.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import hardware.service.booking.DAO.UserDaoImpl;

@Controller
public class AdminHomePageController {
	
	private UserDaoImpl userDaoImpl = new UserDaoImpl();

	@RequestMapping("get-admin-homepage")
	public String getAdminHomePage(Model model) {
		
		int totalCount = userDaoImpl.getCount();
		model.addAttribute("totalCount",totalCount);
		
		int completedCount = userDaoImpl.getCompletedCount();
		model.addAttribute("completedCount",completedCount);
		
		int pendingCount = userDaoImpl.getPendingCount();
		model.addAttribute("pendingCount",pendingCount);
		
		return "admin-homepage";
		
	}

}
