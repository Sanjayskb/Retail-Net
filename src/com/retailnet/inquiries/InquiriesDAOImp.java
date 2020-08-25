/**
 * 
 */
package com.retailnet.inquiries;

import java.util.ArrayList;
import javax.annotation.Resource;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.retailnet.products.ProductImage;

/**
 * @author ASUS
 *
 */
@Repository("InvoiceDAO")
public class InquiriesDAOImp implements InquiriesDAO{
	@Autowired
	protected SessionFactory sessionFactory;
	
	@Override
	public Inquiries  insertInquiries(Inquiries Inquiries) {
		
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try 
		{
			session.save(Inquiries);
			transaction.commit();
			return Inquiries;
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
	public Inquiries fetchInquiryById(int tableId) {
		Session session = sessionFactory.openSession();		
		try {
			Inquiries Inquiries = (Inquiries) session.get(Inquiries.class,tableId);
			return Inquiries;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}

	}

	@Override
	public ArrayList<Inquiries> fetchAllInquiries() {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Inquiries> Inquiries = (ArrayList<Inquiries>) session.createCriteria(Inquiries.class).list();
			return Inquiries;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public ArrayList<Inquiries> fetchAllInquiriesBySellerId(int sellerId) {
		
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Inquiries> Inquiries = (ArrayList<Inquiries>) session.createCriteria(Inquiries.class).add(Restrictions.eq("sellerId.firmId", sellerId)).list();
			return Inquiries;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public ArrayList<Inquiries> fetchAllInquiriesByBuyerId(int buyerId) {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Inquiries> Inquiries = (ArrayList<Inquiries>) session.createCriteria(Inquiries.class).add(Restrictions.eq("buyerId.firmId", buyerId)).list();
			return Inquiries;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public boolean removeInquiryById(int tableId) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
	    
		try {
			Inquiries inquiries = (Inquiries)session.get(Inquiries.class, tableId);
			if(inquiries!=null) {
				session.delete(inquiries);
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
	public ArrayList<Inquiries> fetchInquiryByProductId(int productId) {
		Session session = sessionFactory.openSession();
		try {
			ArrayList<Inquiries> inquiries = (ArrayList<Inquiries>) session.createCriteria(Inquiries.class).add(Restrictions.eq("products.productId", productId)).list();
			return inquiries;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
		
	}

}
