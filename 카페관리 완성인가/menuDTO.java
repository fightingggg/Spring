package com.human.springboot;

import lombok.Data;

@Data
public class menuDTO{
	private int s_no;
	private String name;
	private int price;

	// getter setter 
	/*
	
		public String getName(){
			return name;
		}
	
		System.out.println( dto1.s_no ); 1출력
		
		System.out.println( dto1.getS_no() ); 1출력
	*/
}
