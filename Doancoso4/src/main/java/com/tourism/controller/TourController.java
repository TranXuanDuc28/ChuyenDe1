package com.tourism.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tourism.bean.MailInfo;
import com.tourism.dao.CategoryTourDAO;
import com.tourism.dao.TourDAO;
import com.tourism.entity.CategoryTour;
import com.tourism.entity.Tour;
import com.tourism.service.MailService;

@Controller
public class TourController {
	@Autowired
	TourDAO tdao;
	
	@Autowired
	CategoryTourDAO dao;
	
	@Autowired
	MailService mail;
	
	@RequestMapping("/tour/chitiettour/{cid}")
	public String detailsTour(Model model, @PathVariable("cid") Integer tourId) {
		Tour tour = tdao.findById(tourId);
		System.out.println(tour.getCategorytour().getId_category_tour());
		List<Tour> list = tdao.findByTourId(tourId);
		List<CategoryTour> relatedtour = dao.findTourByCategoryTourId(tour.getCategorytour().getId_category_tour());
		model.addAttribute("detailsTourById", list);
		model.addAttribute("relatedtour", relatedtour);
		return "tour/details-tour-by-id";
	}
	@RequestMapping("/category-tour/category/{cid}")
	public String listTourByCategoryTour(Model model, @PathVariable("cid") Integer categoryTourId) {
		List<CategoryTour> list = dao.findTourByCategoryTourId(categoryTourId);
		model.addAttribute("listTourById", list);
		return "tour/list-tour-id";
	}
	@ResponseBody
	@RequestMapping("/tour/send-to-friend")
	public boolean senToFriend(Model model, MailInfo info, HttpServletRequest request) {
		String id = request.getParameter("id");
		String link = request.getRequestURL().toString().replace("send-to-friend", "detail-tour/"+id);
		info.setBody(info.getBody()+"<hr>Xem chi tiết ngay. <a href="+link+">Tại đây!</a>");
		info.setSubject("Thông tin tour du lịch");
		try {
			mail.send(info);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
	
	@RequestMapping("/tour/list-by-keywords")
	public String listTourByCategoryTour(Model model,
			@RequestParam("keywords") String  keywords) {
		List<CategoryTour> list = dao.findTourByKeywords(keywords);
		model.addAttribute("listTourById", list);
		return "tour/list-tour-id";
	}
	

}
