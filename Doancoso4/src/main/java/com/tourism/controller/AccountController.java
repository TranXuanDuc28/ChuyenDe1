
package com.tourism.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tourism.dao.CustomerDAO;
import com.tourism.entity.Customer;
import com.tourism.service.CookieService;

@Controller
public class AccountController {
	
	 @Autowired 
	 CustomerDAO dao;
	 @Autowired
	 HttpSession session;
	 @Autowired
	 CookieService cookie;
	 
	 
	
	@GetMapping("/account/login")
	public String login() {
		return "account/login";
	}
	
	@PostMapping("/account/login")
	public String login(
			Model model,
			@RequestParam("id") String id,
			@RequestParam("pw") String pw,
			@RequestParam(value="rm", defaultValue = "false") boolean rm
			) {
		Customer user = dao.findById(id);
		if(user == null) {
			model.addAttribute("message", "Username không tồn tại!");
		}else if(!pw.equals(user.getCustomer_password())) {
			model.addAttribute("message","Mật khẩu sai!");
		}else {
			model.addAttribute("message", "Đăng nhập thành công!");
			session.setAttribute("user", user);
			
			//Ghi nho tai khoan bang cookie
			if(rm == true) {
				cookie.create("userId", user.getCustomer_id().toString(), 30);
				cookie.create("pass", user.getCustomer_password(), 30);
				
			}else {
				cookie.delete("userId");
				cookie.delete("pass");
			}
		}
		return "account/login";
	}
}

