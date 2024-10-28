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
public class TourImpl implements TourDAO{
@Autowired
SessionFactory factory;
	@Override
	public Tour findById(Integer id_tour) {
	
		Session session = factory.getCurrentSession();
		Tour entity = session.find(Tour.class,id_tour);
		
		return entity;
	}

	/*
	 * @Override public List<CategoryTour> findAllWithTours(){ String hql =
	 * "FROM CategoryTour ct JOIN FETCH ct.tours"; Session session =
	 * factory.getCurrentSession(); TypedQuery<CategoryTour> query =
	 * session.createQuery(hql, CategoryTour.class); return query.getResultList(); }
	 */
	@Override
	public List<Tour> findAll(){
		String hql="FROM Tour";
		Session session = factory.getCurrentSession();
		TypedQuery<Tour> query = session.createQuery(hql,Tour.class);
		List<Tour> listtour =query.getResultList();
		return listtour;
	}
	@Override
	public Tour create(Tour entity) {
		Session session = factory.getCurrentSession();
		session.save(entity);
		return entity;
	}

	@Override
	public void update(Tour entity) {
		Session session = factory.getCurrentSession();
		session.update(entity);
		
	}

	@Override
	public Tour delete(Integer id_category_tour) {
		Session session = factory.getCurrentSession();
	    Tour entity = session.find(Tour.class,id_category_tour);
		session.delete(entity);
		return entity;
	
	}


	@Override
	public List<Tour> findByCategoryTourId(Integer categoryTourId) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Tour> findByTourId(Integer tourId) {
		String hql = "SELECT DISTINCT ct FROM Tour ct JOIN FETCH ct.detailstour WHERE ct.id_tour=:cid";
	    Session session = factory.getCurrentSession();
	    TypedQuery<Tour> query = session.createQuery(hql, Tour.class);
	    query.setParameter("cid", tourId);
		return query.getResultList();
	}
	
}
