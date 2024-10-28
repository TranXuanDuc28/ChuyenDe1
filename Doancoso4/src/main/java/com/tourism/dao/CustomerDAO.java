package com.tourism.dao;

import com.tourism.entity.Customer;

public interface CustomerDAO {

	Customer findById(String id);
	
}

