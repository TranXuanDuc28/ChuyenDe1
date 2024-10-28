package com.tourism.dao;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.tourism.entity.CategoryTour;
import com.tourism.entity.Tour;

import java.util.List;

@Transactional
@Repository
public class CategoryTourImpl implements CategoryTourDAO{
	@Autowired
	SessionFactory factory;
	
	@Override
	public CategoryTour findById(Integer id_category_tour) {
	
		Session session = factory.getCurrentSession();
		CategoryTour entity = session.find(CategoryTour.class,id_category_tour);
		
		return entity;
	}

	
	@Override
	public List<CategoryTour> findAll(){
		String hql="FROM CategoryTour";
		Session session = factory.getCurrentSession();
		TypedQuery<CategoryTour> query = session.createQuery(hql,CategoryTour.class);
		List<CategoryTour> list =query.getResultList();
		return list;
	}
	@Override
	public CategoryTour create(CategoryTour entity) {
		Session session = factory.getCurrentSession();
		session.save(entity);
		return entity;
	}

	@Override
	public void update(CategoryTour entity) {
		Session session = factory.getCurrentSession();
		session.update(entity);
		
	}

	@Override
	public CategoryTour delete(Integer id_category_tour) {
		Session session = factory.getCurrentSession();
	    CategoryTour entity = session.find(CategoryTour.class,id_category_tour);
		session.delete(entity);
		return entity;
	
	}
	@Override
	public List<CategoryTour> findTourByCategoryTourId(Integer categoryTourId){
//	    String hql = "FROM CategoryTour ct JOIN FETCH ct.tours Where ct.id_category_tour=:cid";
	    String hql = "SELECT DISTINCT ct FROM CategoryTour ct JOIN FETCH ct.tours WHERE ct.id_category_tour=:cid";
	    Session session = factory.getCurrentSession();
	    TypedQuery<CategoryTour> query = session.createQuery(hql, CategoryTour.class);
	    query.setParameter("cid", categoryTourId);
		return query.getResultList();
	}
	
	@Override
	public List<CategoryTour> findTourByKeywords(String keywords) {
		String hql="SELECT DISTINCT ct FROM CategoryTour ct JOIN FETCH  ct.tours t"
				+ " WHERE ct.title_category_tour LIKE :kw OR t.title_tour LIKE :kw ";
		Session session = factory.getCurrentSession();
		TypedQuery<CategoryTour> query = session.createQuery(hql,CategoryTour.class);
		query.setParameter("kw", "%"+keywords+"%");
		List<CategoryTour> listtour =query.getResultList();
		return listtour;
	}
}
