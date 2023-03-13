package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IDAO {


	// 자바는 프로그래밍 언어고 DB는 프로그램 이니까 서로 연관성이 없는데 
	// 그거를 이어주는 다리 같은데 DAO,DTO,XML
	ArrayList<menuDTO> menu_select();
	void menu_insert(String x1, int x2); //xml도 써야한다.
	
	void menu_delete(int s_no);
	void menu_update(int s_no, String name, int price);
	void sales_insert(String mobile, String name, int price, int qty);
	
	// 이 메서드로 DB를 수정하는거!
	
	ArrayList<salesDTO> get_sales();
	
}
