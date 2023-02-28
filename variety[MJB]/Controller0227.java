package com.human.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class Controller0227 {

	
	
	@GetMapping("/home")
	public String home() {
		return "/home";
	}
	
	@PostMapping("/course")
	public String course(HttpServletRequest req, Model model) {
		
		String gender = req.getParameter("gender");
		String city = req.getParameter("city");
		// 이렇게 array로 받고 for문돌려서 그냥 한 문자열변수에 넣어두 됨 
		// 근데 rendering 하는건 그냥 jsp 에서 하라고 하심.
		
		String start = req.getParameter("start");
		String end = req.getParameter("end");
		
		String[]subject = req.getParameterValues("subject");
		
		model.addAttribute("gender", gender);
		model.addAttribute("city", city);
		model.addAttribute("start", start);
		model.addAttribute("end", end);
		
		model.addAttribute("subject", subject);
		
		return "/course";
	}
	
	
	
	// 스프링은 개인프로젝트/팀프로젝트 해가지고 1달정도 할거임.
	
	// Machine Learning / Deep Learning 은 살살하려고했는데, Chatgpt 때문에 제대로 한다고함.
	// 3월은 한달내내 Spring 만함. 근데 거기에 지금까지 배운 Java,HTML/CSS,JavaScript 등등 다들어감.
	
	// 이제 혼자 Spring project 만들고 설정값 바꾸는건 할 줄 알아야 함
	// gradle 에 뭐 추가하고, application.properties 에 뭐 추가하고, 
	// scr-main 에 webapp - WEB-INF - views 만드는거 이런거 다 외워야함.
	
	// 그리고 c-forEach 문 쓰려면 
	// <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 선언하고 그런거 
	// 다 할줄 알아야 함
	
	
	
	// 선생님방식
	
/*	
	
	@PostMapping("/course")
	public String course(HttpServletRequest req, Model model) {
		
		model.addAttribute("gender", req.getParameter("gender"));
		model.addAttribute("city", req.getParameter("city"));
		model.addAttribute("start_dt", req.getParameter("start_dt"));
		model.addAttribute("end_dt", req.getParameter("end_dt"));
		model.addAttribute("course", req.getParameterValues("course"));

		return "course";
	}
	
	
	
	오후에는 밥먹고와서 R language 시험
	
	그리고 session
	> 쿠키는 javaScript 로 핸들링하다면,
	session 는 Java, Spring 으로 핸들링함
	
	
	session 필요한 이유. 
	
	로그인 회원가입창에서 로그인하고나서 뒤로가기했을때 
	다시 로그인 하지 않고 접속된체로 홈페이지에 아이디, 로그아웃 뜨게 하는거
	
	
	session 변수 설정 : 설정안돼있으면 로그인회원가입 / 설정돼있으면 아이디,로그아웃 보여줌
	로그아웃하면 다시 session변수 설정해제
	
	이거는 전에 만들었던 홈페이지/로그인 그거랑 관련해서 함.
	
	일단 홈페이지를 하나 만들고, 할거
	
	새 프로젝트 ㄱ
*/	
	
	
	
	
	
	
}
