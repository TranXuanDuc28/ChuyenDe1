package com.tourism.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.tourism.dao.CategoryTourDAO;
import com.tourism.dao.TourDAO;
import com.tourism.entity.CategoryTour;
import com.tourism.entity.Tour;

@Component
public class ShareInterceptor extends HandlerInterceptorAdapter {
	@Autowired
	CategoryTourDAO dao;
	
	@Autowired
	TourDAO tdao;
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		List<CategoryTour> list = dao.findAll();
		request.setAttribute("catesTour", list);
		List<Tour> listtour = tdao.findAll();
		request.setAttribute("listTour", listtour);
	}
	
	

	
}
