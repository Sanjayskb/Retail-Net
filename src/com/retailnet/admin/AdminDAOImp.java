/**
 * 
 */
package com.retailnet.admin;

import java.util.ArrayList;
import javax.annotation.Resource;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.retailnet.cart.Cart;
import com.retailnet.user.User;
/**
 * @author ASUS
 *
 */
@Repository("AdminDAO")
public class AdminDAOImp implements AdminDAO{

	@Autowired
	protected SessionFactory sessionFactory;
	
	@Override
	public Help insertHelp(Help help) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try 
		{
			session.save(help);
			transaction.commit();
			return help;
		}
		catch(HibernateException e)
		{ 
			transaction.rollback();
			e.printStackTrace();
			return null;
		}
		finally {
			if(session != null && session.isOpen())
				session.close();
		}
	}
	
	@Override
	public ArrayList<Help> fetchAllHelps() {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Help> helps = (ArrayList<Help>) session.createCriteria(Help.class).list();
			return helps;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public boolean updateHelp(Help help) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			session.update(help);
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
	public boolean deleteHelp(int tableId) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
	    
		try {
			Help help = (Help)session.get(Help.class, tableId);
			if(help!=null) {
				session.delete(help);
				System.out.println("deleted successfully");
				transaction.commit();
			}	return true;
			
		}catch (HibernateException e) {
				transaction.rollback();
				e.printStackTrace();
				return false;
			} finally {
	            if (session != null && session.isOpen())
	                session.close();
			}
	}
	
	@Override
	public Help fetchHelpById(int tableId) {
		Session session = sessionFactory.openSession();		
		try {
			Help help = (Help) session.get(Help.class, tableId);
			return help;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
		
	}
	

}

