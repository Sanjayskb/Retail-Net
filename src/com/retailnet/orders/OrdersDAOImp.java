/**
 * 
 */
package com.retailnet.orders;
import javax.annotation.Resource;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.ArrayList;

/**
 * @author ASUS
 *
 */
@Repository("OrdersDAO")

public class OrdersDAOImp implements OrdersDAO{
	
	@Autowired
	protected SessionFactory sessionFactory;
	

	@Override
	public int insertOrder(Order order) {
		
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try 
		{
			session.save(order);
			transaction.commit();
			return order.orderId;
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
	public Order fetchProductById(int orderId) {
		Session session = sessionFactory.openSession();		
		try {
			Order orders = (Order) session.get(Order.class, orderId);
			return orders;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}

	}

	@Override
	public ArrayList<Order> fetchAllOrdersBySellerId(int sellerId) {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Order> orders = (ArrayList<Order>) session.createCriteria(Order.class).add(Restrictions.eq("sellerId",sellerId)).list();
			return orders;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
			
	}

}
