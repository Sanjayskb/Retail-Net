/**
 * 
 */
package com.retailnet.sector;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


/**
 * @author ASUS
 *
 */
@Repository("SectorDAO")
public class SectorDAOImp  implements SectorDAO{
	
	@Autowired
	protected SessionFactory sessionFactory;
	
	
	
	@Override
	public int insertSector(Sector sector) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try 
		{
			session.save(sector);
			transaction.commit();
			return sector.sectorId;
		}
		catch(HibernateException e)
		{ 
			transaction.rollback();
			e.printStackTrace();
			return 0;
		}
		finally {
			if(session != null && session.isOpen())
				session.close();
		}
	}

	@Override
	public Sector fetchSectorById(int sectorId) {
		Session session = sessionFactory.openSession();		
		try {
			Sector sector = (Sector) session.get(Sector.class, sectorId);
			return sector;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public ArrayList<Sector> fetchAllSectors() {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Sector> sectors = (ArrayList<Sector>) session.createCriteria(Sector.class).addOrder(Order.asc("sectorName")).list();
			return sectors;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public boolean updateSector(Sector sector) {
		
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			session.update(sector);
			transaction.commit();
			return true;
		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
			return false;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public int insertCategory(Category category) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try 
		{
			session.save(category);
			transaction.commit();
			return category.categoryId;
		}
		catch(HibernateException e)
		{ 
			transaction.rollback();
			e.printStackTrace();
			return 0;
		}
		finally {
			if(session != null && session.isOpen())
				session.close();
		}
	}

	@Override
	public Category fetchCategoryById(int categoryId) {
		Session session = sessionFactory.openSession();		
		try {
			Category category= (Category) session.get(Category.class,categoryId);
			return category;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public ArrayList<Category> fetchAllCategories() {
		
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Category> categories = (ArrayList<Category>) session.createCriteria(Category.class).list();
			return categories;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public ArrayList<Category> fetchCategoriesBySectorId(int sectorId) {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Category> Categories = (ArrayList<Category>) session.createCriteria(Category.class)
										.add(Restrictions.eq("sector.id", sectorId))
										.list();
			return Categories;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	
	

}
