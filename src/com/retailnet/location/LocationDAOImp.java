package com.retailnet.location;

import java.util.ArrayList;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.retailnet.products.Products;
import com.retailnet.sector.Category;
import com.retailnet.user.UserType;

@Repository("LocationDAO")
public class LocationDAOImp implements LocationDAO {

	@Autowired
	protected SessionFactory sessionFactory;
	
	@Override
	public ArrayList<States> fetchAllStates() {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<States> states = (ArrayList<States>) session.createCriteria(States.class).list();
			return states;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public ArrayList<Cities> fetchAllCities() {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Cities> cities = (ArrayList<Cities>) session.createCriteria(Cities.class).list();
			return cities;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public ArrayList<Cities> fetchCitiesByStateId(int stateId) {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Cities> cities = (ArrayList<Cities>) session.createCriteria(Cities.class)
										.add(Restrictions.eq("states.id", stateId))
										.list();
			return cities;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public Cities fetchCityById(int cityId) {
		Session session = sessionFactory.openSession();		
		try {
			Cities cities = (Cities) session.get(Cities.class, cityId);
			return cities;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	
}
