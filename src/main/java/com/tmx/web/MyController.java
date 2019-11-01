package com.tmx.web;




import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class MyController {
	
	
	
	@RequestMapping(value = "/login")
	public String login(HttpServletRequest request) {
		
		return "redirect:login.jsp";
	}
	
	@RequestMapping("/readyLogin")
	public String readyLogin() {
		return "/WEB-INF/views/blog/blog";
	}
}
