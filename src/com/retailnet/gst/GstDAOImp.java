/**
 * 
 */
package com.retailnet.gst;

import java.util.ArrayList;
import javax.annotation.Resource;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @author ASUS
 *
 */
@Repository("GstDAO")
public class GstDAOImp implements GstDAO{
	
	@Autowired
	protected SessionFactory sessionFactory;
	
	@Override
	public int insertGst(Gst gst) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try 
		{
			session.save(gst);
			transaction.commit();
			return gst.gstId;
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
	public Gst fetchGstById(int gstId) {
		Session session = sessionFactory.openSession();		
		try {
			Gst gst = (Gst) session.get(Gst.class, gstId);
			return gst;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public ArrayList<Gst> fetchAllGsts() {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Gst> gst = (ArrayList<Gst>) session.createCriteria(Gst.class).list();
			return gst;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}

	}

	@Override
	public ArrayList<Unit> fetchAllUnits() {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Unit> unit = (ArrayList<Unit>) session.createCriteria(Unit.class).list();
			return unit;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

}

