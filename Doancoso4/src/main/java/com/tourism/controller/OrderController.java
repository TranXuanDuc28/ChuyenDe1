package com.tourism.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {
	@GetMapping("/order/checkout")
	public String checkout() {
		return "order/checkout";
	}
	@PostMapping("/order/checkout")
	public String checkout(@ModelAttribute("order") Order order) {
		return "order/checkout";
	}
}
