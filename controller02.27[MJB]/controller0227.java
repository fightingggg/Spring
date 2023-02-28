package com.human.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class controller0227 {

	
/*	
							Session

	
	
	
*/	
	/*
	@GetMapping("/home")	
	public String dohome() {
		return "/home";
	}
	*/
	
	
	@GetMapping("/home")	// 이거는 controller 에서 다 처리하는방법
	public String dohome(HttpServletRequest req, Model model) {
		HttpSession sinfo = req.getSession();
		if(sinfo.getAttribute("userid")==null) {
			model.addAttribute("logininfo",""
					+ "<a href='/login'>로그인</a> &nbsp; "
					+ "<a href='/signin'>회원가입</a>");
		} else {
			model.addAttribute("logininfo",""
					+ sinfo.getAttribute("userid")+"&nbsp;"+
					"<a href='/logout'>로그아웃</a>");
		}
		
		return "/home";
	}
	
	
	@GetMapping("/login")
	public String showLogin() {
		return "/login";
	}
	/*
	@PostMapping("/dologin")
	public String doLogin(HttpServletRequest req, Model model) {
		
		String loginid = req.getParameter("loginid");
		String pwd = req.getParameter("passcode");
		
		System.out.println("loginid [" + loginid + "]");
		System.out.println("passcode [" + pwd + "]");
		
		HttpSession sinfo = req.getSession();		// Session class instance 세션정보생성
		if(loginid.equals("minjae") && pwd.equals("1234")) {
			// 로그인 성공하면 세션변수 세팅함. 세션변수가 하나 만들어지는거임
			sinfo.setAttribute("userid", loginid); // 이게 세션정보 저장하는거임. 세션변수세팅 
		}										   // 세션정보 실어줌. 서버에 계속 이 정보가 보관됨
		
		return "home";

//		return "redirect:/home"; < 이렇게 할 수도 있는데, 
		// 이렇게하면 home mapping method 를 실행하라는뜻. home.jsp를 client로 sending 하는게 아님
	}
	
	*/
	// 이게 첫번째 방법이고, 두번째는 jsp 에 코딩안함 
	
	
	@GetMapping("/signin")
	public String showSignin() {
		return "/signin";
	}
	
	
	
	// 오늘한거 굉장히 중요함 ** 
	// 로그인하면 없던 버튼 보이고 그런게 다 session 으로 control 로 하는거 
	// 로그인안하면 게시판에서 글쓰기버튼 안보이고 그러는것도 다 마찬가지 
	
	// 로그아웃눌렀을때 session data 날아가는건 내일함.
	
	
	
	// 이번엔 controller 에서 다 처리하는방법
	
	@PostMapping("/dologin")
	public String doLogin(HttpServletRequest req, Model model) {
		
		String loginid = req.getParameter("loginid");
		String pwd = req.getParameter("passcode");
		
		System.out.println("loginid [" + loginid + "]");
		System.out.println("passcode [" + pwd + "]");
		
		HttpSession sinfo = req.getSession();		
		if(loginid.equals("minjae") && pwd.equals("1234")) {
			sinfo.setAttribute("userid", loginid); 
		}										  

		return "redirect:/home"; //    /home 을 실행함. method 안의 logic을 실행하는거임
	}							//     client 에 home 을 보내주는게 아님! server에서 logic을 한번 더
								//		돌리는거임
	
	
	// 둘 다 배우는 이유는 어떤회사는 jsp 에다가 코딩하기때문 
	
	
	
	
	
	
	// 내일 할 과제 미리 설명 : 회원가입 하고나서함
	
	// 세션 다루기 매우 중요함  session
	
	
	
	// session 변수 여러개 쓰게될거임
	// 지금도 
	
	// sinfo.setAttribute("userid", loginid) 
	// 실제로 상용앱에서는 이걸 여러개넣음. 세션 열댓개씩 쓰는곳도 있는데 
	// 그런곳은 게임에 부하걸리고 그럼 
	
	// 내일은 회원가입 하는거 가지고 해야하는데 아직 DB랑 연동안했음
	// 회원이 아닌아이디로 로그인하는경우 
}
