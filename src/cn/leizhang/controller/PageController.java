package cn.leizhang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	
	
	
	
	@RequestMapping(value="/myaccount")
	public String myaccount()
	{
		return "myaccount";
	}
	@RequestMapping(value="/update")
	public String updateAccount()
	{
		
		return "update";
	}
	@RequestMapping(value="/about")
	public String about()
	{
		
		return "about";
	}
	//跳转注册界面的方法
	@RequestMapping(value="/register")
	public String register()
	{
		
		return "register";
	}
	//跳转协议
		@RequestMapping(value="/protocal")
		public String protocal()
		{
			
			return "protocal";
		}
		
		
		//留言页面
		@RequestMapping(value="/contact")
		public String contact()
		{
			
			return "contact";
		}
		
	
		
		
}
