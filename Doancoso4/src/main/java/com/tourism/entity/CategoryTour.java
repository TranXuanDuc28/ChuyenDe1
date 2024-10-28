package com.tourism.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity @Table(name="tbl_category_tour")
public class CategoryTour {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id_category_tour;
	String title_category_tour;
	String image_category_tour;
	
	@OneToMany(mappedBy = "categorytour", fetch = FetchType.EAGER) 
	List<Tour> tours;
	

	public Integer getId_category_tour() {
		return id_category_tour;
	}

	public void setId_category_tour(Integer id_category_tour) {
		this.id_category_tour = id_category_tour;
	}

	public String getTitle_category_tour() {
		return title_category_tour;
	}

	public void setTitle_category_tour(String title_category_tour) {
		this.title_category_tour = title_category_tour;
	}

	public String getImage_category_tour() {
		return image_category_tour;
	}

	public void setImage_category_tour(String image_category_tour) {
		this.image_category_tour = image_category_tour;
	}

	public List<Tour> getTours() {
		return tours;
	}

	public void setTours(List<Tour> tours) {
		this.tours = tours;
	}


}
