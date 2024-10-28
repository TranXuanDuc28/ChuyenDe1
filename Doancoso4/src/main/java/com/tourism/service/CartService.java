package com.tourism.service;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.tourism.dao.TourDAO;
import com.tourism.entity.Tour;

@SessionScope //Name: scopedTarget.cartService
@Service
public class CartService {
	@Autowired
	TourDAO dao;
	
	Map<Integer, Tour> map = new HashMap<>();
	
	public void add(Integer id) {
		Tour t = map.get(id);
		if(t == null) {
			t = dao.findById(id);
			t.setQuantity_guest_tour(1);
			map.put(id,t);
		}else {
			t.setQuantity_guest_tour(t.getQuantity_guest_tour()+1);
		}
	}
	
	public void remove(Integer id) {
		map.remove(id);
	}
	
	public void update(Integer id, int qty) {
		Tour t = map.get(id);
		t.setQuantity_guest_tour(qty+1);
	}
	
	public void clear() {
		map.clear();
	}
	
	public int getCount() {
		int count = 0;
		Collection<Tour> ts = this.getItems();
		for(Tour t: ts) {
			count+= t.getQuantity_guest_tour();
		}
		return count;
	}
	
	public double getAmount(){
		double amount = 0;
		Collection<Tour> ts = this.getItems();
		for(Tour t: ts) {
			String priceString = t.getPrice_tour();
			Integer price = Integer.parseInt(priceString);
			amount += t.getQuantity_guest_tour() * price;
		}
		return amount;
	}
	
	public Collection<Tour> getItems(){
		return map.values();
	}
}
