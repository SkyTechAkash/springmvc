package springmvc;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
//@Component
public class SearchController {
	
	@RequestMapping("/home")
	public String home() {
		System.out.println("In home handler");
		return "home";
	}
	
	@RequestMapping("/search")
	public RedirectView searching(@RequestParam("querybox") String data) {
		
		String url = "https://www.google.com/search?q="+data;
		System.out.println("inside the search controller");
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(url);
		return redirectView;
	}
	
	@RequestMapping("/user/{userId}/{userName}")
	public String getuserId(@PathVariable("userId") int userId, @PathVariable("userName") String userName, Model model) {
		System.out.println("userId " + userId);
		System.out.println("userName " + userName);
		model.addAttribute("id", userId);
		model.addAttribute("name", userName);
		return "home";
	}
	
	
	/*
	 * @ExceptionHandler({NullPointerException.class}) public String nullError() {
	 * return "error"; }
	 */
	

}
