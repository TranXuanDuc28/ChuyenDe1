package com.tourism.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_tour_details")
public class DetailsTour {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id_tour_details;
	String chiphibaogom;
	String diemkhoihanh;
	String khoangthoigian;
	String calendar;
	String giokhoihanh;
	String lichtrinh;
	String google_map;
	String video;
	

	
	 @ManyToOne
	 @JoinColumn(name="id_tour") 
	 Tour tour;



	public Integer getId_tour_detail() {
		return id_tour_details;
	}



	public void setId_tour_detail(Integer id_tour_details) {
		this.id_tour_details = id_tour_details;
	}



	public String getChiphibaogom() {
		return chiphibaogom;
	}



	public void setChiphibaogom(String chiphibaogom) {
		this.chiphibaogom = chiphibaogom;
	}



	public String getDiemkhoihanh() {
		return diemkhoihanh;
	}



	public void setDiemkhoihanh(String diemkhoihanh) {
		this.diemkhoihanh = diemkhoihanh;
	}



	public String getKhoangthoigian() {
		return khoangthoigian;
	}



	public void setKhoangthoigian(String khoangthoigian) {
		this.khoangthoigian = khoangthoigian;
	}



	public String getCalendar() {
		return calendar;
	}



	public void setCalendar(String calendar) {
		this.calendar = calendar;
	}



	public String getGiokhoihanh() {
		return giokhoihanh;
	}



	public void setGiokhoihanh(String giokhoihanh) {
		this.giokhoihanh = giokhoihanh;
	}



	public String getLichtrinh() {
		return lichtrinh;
	}



	public void setLichtrinh(String lichtrinh) {
		this.lichtrinh = lichtrinh;
	}



	public String getGoogle_map() {
		return google_map;
	}



	public void setGoogle_map(String google_map) {
		this.google_map = google_map;
	}



	public String getVideo() {
		return video;
	}



	public void setVideo(String video) {
		this.video = video;
	}



	

}