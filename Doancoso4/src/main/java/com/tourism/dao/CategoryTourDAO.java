package com.tourism.dao;



import com.tourism.entity.CategoryTour;
import com.tourism.entity.Tour;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

public interface CategoryTourDAO {
 CategoryTour findById(Integer id_category_tour);
 List<CategoryTour> findAll();
 CategoryTour create(CategoryTour entity);
 void update(CategoryTour entity);
 CategoryTour delete(Integer id_category_tour);
 List<CategoryTour> findTourByCategoryTourId(Integer categoryTourId);
 List<CategoryTour> findTourByKeywords(String keywords);
}
