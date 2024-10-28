package com.tourism.dao;



import com.tourism.entity.CategoryTour;
import com.tourism.entity.Tour;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

public interface TourDAO {
 Tour findById(Integer id_tour);
 List<Tour> findAll();
 Tour create(Tour entity);
 void update(Tour entity);
 Tour delete(Integer id_tour);
 List<Tour> findByCategoryTourId(Integer categoryTourId);

	/* List<CategoryTour> findAllWithTours(); */
List<Tour> findByTourId(Integer tourId);
}
