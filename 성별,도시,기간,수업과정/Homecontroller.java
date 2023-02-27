package com.human.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class Homecontroller {
	@GetMapping("/home")
	public String home() {	
		return "home";
	}
	@GetMapping("/course")
	public String course(HttpServletRequest req, Model model) {	
		String gender = req.getParameter("gender");
		String city = req.getParameter("city");
		String start = req.getParameter("start");
		String end = req.getParameter("end");
		
		String [] subject=req.getParameterValues("interest");
		
		
		model.addAttribute("gender",gender);
		model.addAttribute("city",city);
		model.addAttribute("start",start);
		model.addAttribute("end",end);
		model.addAttribute("subject",subject);
		
		return "course";
	}
	
	

}
