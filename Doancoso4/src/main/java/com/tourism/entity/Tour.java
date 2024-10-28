package com.tourism.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_tour")
public class Tour {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id_tour;
	String title_tour;
	String image_tour;
	String image_tour1;
	String image_tour2;
	String image_tour3;
	String image_tour4;
	String time;
	String price_tour;
	Integer quantity_guest_tour;
	String place_tour;
	Integer tour_hot;
	Integer status_tour;

	
	 @ManyToOne
	 @JoinColumn(name="id_category_tour") 
	 CategoryTour categorytour;
	 
	 @OneToMany(mappedBy = "tour", fetch = FetchType.EAGER) 
		List<DetailsTour> detailstour;
	
	 public List<DetailsTour> getDetailstour() {
		return detailstour;
	}

	public void setDetailstour(List<DetailsTour> detailstour) {
		this.detailstour = detailstour;
	}

	public Integer getId_tour() {
		return id_tour;
	}

	public void setId_tour(Integer id_tour) {
		this.id_tour = id_tour;
	}

	public String getTitle_tour() {
		return title_tour;
	}

	public void setTitle_tour(String title_tour) {
		this.title_tour = title_tour;
	}

	public String getImage_tour() {
		return image_tour;
	}

	public void setImage_tour(String image_tour) {
		this.image_tour = image_tour;
	}

	public String getImage_tour1() {
		return image_tour1;
	}

	public void setImage_tour1(String image_tour1) {
		this.image_tour1 = image_tour1;
	}

	public String getImage_tour2() {
		return image_tour2;
	}

	public void setImage_tour2(String image_tour2) {
		this.image_tour2 = image_tour2;
	}

	public String getImage_tour3() {
		return image_tour3;
	}

	public void setImage_tour3(String image_tour3) {
		this.image_tour3 = image_tour3;
	}

	public String getImage_tour4() {
		return image_tour4;
	}

	public void setImage_tour4(String image_tour4) {
		this.image_tour4 = image_tour4;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPrice_tour() {
		return price_tour;
	}

	public void setPrice_tour(String price_tour) {
		this.price_tour = price_tour;
	}

	public Integer getQuantity_guest_tour() {
		return quantity_guest_tour;
	}

	public void setQuantity_guest_tour(Integer quantity_guest_tour) {
		this.quantity_guest_tour = quantity_guest_tour;
	}

	public String getPlace_tour() {
		return place_tour;
	}

	public void setPlace_tour(String place_tour) {
		this.place_tour = place_tour;
	}

	public Integer getTour_hot() {
		return tour_hot;
	}

	public void setTour_hot(Integer tour_hot) {
		this.tour_hot = tour_hot;
	}

	public Integer getStatus_tour() {
		return status_tour;
	}

	public void setStatus_tour(Integer status_tour) {
		this.status_tour = status_tour;
	}

	public CategoryTour getCategorytour() {
		return categorytour;
	}

	public void setCategorytour(CategoryTour categorytour) {
		this.categorytour = categorytour;
	}

}
