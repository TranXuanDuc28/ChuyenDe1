
package com.tourism.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tourism.entity.Customer;

@Controller
public class AccountController {
	
	 @Autowired 
	 CustomerDAO dao;
	 @Autowired
	 HttpSession session;
	 
	 
	
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
		}else if(!pw.equals(user.)) {
			
		}
		return "account/login";
	}
}

