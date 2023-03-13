package com.human.springboot;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;
//import org.json.JSONArray; // 이거를 써주면 buildgrade이 먹는다.
//import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class Icontroller {
	

	@Autowired
	private IDAO idao;

	
	@GetMapping("/menu")
	public String doMenu() {
		return "menu";
	}
	@PostMapping("/menu_insert")
	@ResponseBody
	public String doInsert(HttpServletRequest req) {
		String retval="ok";
		try {
		String name=req.getParameter("name");
	int price=Integer.parseInt(req.getParameter("price"));
	
	idao.menu_insert(name,price);
//	return "ok";
		} catch(Exception e) {
			retval= "fail";
		}
		
		return retval; // 이거는 ok가 들어가거나 fail이 들어가거나 하나다
		//jason보다 text를 받는게 낫다 text가 더 가벼워서
	}
	
	
	@PostMapping("/menu_select")
	@ResponseBody
	public String doSelect() {
		ArrayList<menuDTO> mdto = idao.menu_select();
		System.out.println("size="+mdto.size());
		
		JSONArray ja = new JSONArray();
		for(int i=0; i<mdto.size(); i++) {
			JSONObject jo = new  JSONObject();
			menuDTO mo = new menuDTO();
			mo = mdto.get(i);
			
			jo.put("s_no", mo.getS_no());
			jo.put("name", mo.getName());
			jo.put("price", mo.getPrice());
			
			ja.put(jo);
		}
		
		return ja.toString();
	}
	
	

	@PostMapping("/menu_delete")
	@ResponseBody
	public String doDelete(HttpServletRequest req) {
		
		String retval="OK";
		
		try {
			
			int seq= Integer.parseInt(req.getParameter("seq"));
			idao.menu_delete(seq);
			
		} catch(Exception e) {
			
			retval ="fail";
		}
		
		return retval;
		
	}
//	
	
	
	@PostMapping("/menu_update")
	@ResponseBody
	public String doUpdate(HttpServletRequest req) {
		
		String retval="OK";
		try {
			int seq = Integer.parseInt(req.getParameter("seq"));
			String name = req.getParameter("name");
			int price = Integer.parseInt(req.getParameter("price"));
			idao.menu_update(seq,name,price);
		} catch(Exception e) {
			retval = "fail";
			
		}
		
		return retval;
		
		}
	
	
	@PostMapping("/refreshMenu")
	@ResponseBody
	public String refreshMenu() {
		
		ArrayList<menuDTO> menu = idao.menu_select();
		// ArrayList<String> alpahbet = new ArrayList<String>();
		
		// alpahbet.add("a"); alpahbet.add("b"); alpahbet.add("c");
		
		// alpahbet =>    [ "a", "b", "c" ]
		
		// ArrayList<menuDTO>  =>  [dto1, dto2, dto3...] 
		//		System.out.println(dto1.s_no)  
		//                         dto1.name  americnao
		
		// dto2.s_no 16
		
		JSONArray ja = new JSONArray(); //  {name:'강민재', age:30, job:'지게차운전수'}
		// 배열을 여러개 담을떄 ?? 쓴다 카페 1번 , 메뉴,가격
		//  [ ]
		//  [ {}, {}, {}, ... {}//JSON OBJECT ]
		for(int i=0;i<menu.size();i++) {
			
			JSONObject jo = new JSONObject();
			   //  {}							// menu = [dto1, dto2, dto...]
			jo.put("seq", menu.get(i).getS_no());			// menu.get(0) = dto1
			jo.put("name", menu.get(i).getName());			// dto1.s_no = 1 > dto1.getS_no() = 1
			jo.put("price", menu.get(i).getPrice());
			// {seq:30, name:"coffee", price:2000}
			
			ja.put(jo);
			
			
			
			
		}
		
		return ja.toString();
	}
	
	
	
	@PostMapping("/sales_insert") //URL을 서버로 보낸다.
	@ResponseBody
	public String dosales(HttpServletRequest req) {
		String name = req.getParameter("name");
		int price = Integer.parseInt(req.getParameter("price"));
		int qty = Integer.parseInt(req.getParameter("qty"));
		String mobile = req.getParameter("mobile");
		
		idao.sales_insert(mobile,name,price,qty);
		
		
		return "response";
	}
	
	
	@PostMapping("/sales_select")
	@ResponseBody
	public String sales_insert() {
		
		ArrayList<salesDTO> sales =idao.get_sales();
		System.out.println(sales);
		
		JSONArray ja = new JSONArray();
		
		for(int i=0;i<sales.size();i++) {
			
			JSONObject jo = new JSONObject();
			
			jo.put("seq", sales.get(i).getS_no());
			jo.put("created", sales.get(i).getCreated());
			jo.put("mobile", sales.get(i).getMobile());
			jo.put("name", sales.get(i).getName());
			jo.put("qty", sales.get(i).getQty());
			jo.put("sum", sales.get(i).getPrice());
			
			ja.put(jo);
		}
		
		return ja.toString();
		
	}
	
	
	
	
	
}