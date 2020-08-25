package com.retailnet.cart;
import javax.annotation.Resource;
import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.retailnet.orders.Order;
import com.retailnet.products.Products;
import com.retailnet.user.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository("CartDAO")

public class CartDAOImp implements CartDAO {
	@Autowired
	protected SessionFactory sessionFactory;
	
	@Override
	public Cart insertCart(Cart cart) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try 
		{
			session.save(cart);
			transaction.commit();
			return cart;
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
	public Cart fetchCartById(int cartId) {
		Session session = sessionFactory.openSession();		
		try {
			Cart cart = (Cart) session.get(Cart.class, cartId);
			return cart;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
		
	}
	
	@Override
	public boolean updateCart(Cart cart) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			session.update(cart);
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
	public boolean removefromCart(int cartId) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
	    
		try {
			Cart cart = (Cart)session.get(Cart.class, cartId);
			if(cart!=null) {
				session.delete(cart);
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
	public boolean removefromCartByProductId(int productId) {
		// TODO Auto-generated method stub
		return false;
	}
	
	@Override
	public ArrayList<Cart> fetchMyCart(int userId) {
		
		Session session = sessionFactory.openSession();
		
		
		try 
		{
			@SuppressWarnings("unchecked")
			ArrayList<Cart> cart = (ArrayList<Cart>) session.createCriteria(Cart.class).add(Restrictions.eq("user.userId",userId)).list();
			return cart;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return null;
		}
		finally {
			if(session != null && session.isOpen())
			session.close();
		}
	}
	
	@Override
	public ArrayList<Cart> fetchMyCartByProductId(int productId) {
Session session = sessionFactory.openSession();
		
		try 
		{
			@SuppressWarnings("unchecked")
			ArrayList<Cart> cart = (ArrayList<Cart>) session.createCriteria(Cart.class).add(Restrictions.eq("product.productId",productId)).list();
			return cart;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return null;
		}
		finally {
			if(session != null && session.isOpen())
			session.close();
		}
	}

	@Override
	public HashMap<Integer, String> fetchCartProductImagesByProductId(String productId) {
		Session session = sessionFactory.openSession();
		HashMap<Integer, String> imageMap = new HashMap<Integer, String>();
try {
			
			String qry = "SELECT product_id,image_name FROM product_images GROUP by product_id HAVING product_id in ("+productId+")";
			System.out.println(qry);
			
			SQLQuery query = session.createSQLQuery(qry);
			List<Object[]> rows = query.list();
			for(Object[] row : rows){
				imageMap.put(Integer.parseInt(row[0].toString()), row[1].toString());
			}
			return imageMap;
			
		}catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
		
	}

	@Override
	public boolean checkInCart(int userId, int productId) {
		// TODO Auto-generated method stub
Session session = sessionFactory.openSession();
		
		
		try 
		{
			@SuppressWarnings("unchecked")
			List<Cart> cart =  session.createCriteria(Cart.class).add(Restrictions.eq("user.userId",userId)).add(Restrictions.eq("product.productId",productId)).list();
			if(cart.size() > 0 && cart != null) {
				return true;
			}else {
				return false;
			}
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
		finally {
			if(session != null && session.isOpen())
			session.close();
		}
		
		
	}

	@Override
	public boolean checkInCartByProductId(int productId) {
Session session = sessionFactory.openSession();
		
		
		try 
		{
			@SuppressWarnings("unchecked")
			List<Cart> cart =  session.createCriteria(Cart.class).add(Restrictions.eq("product.productId",productId)).list();
			if(cart.size() > 0 && cart != null) {
			return true;
				
			}else {
				return false;
			}
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
		finally {
			if(session != null && session.isOpen())
			session.close();
		}
	}

	

	

	

}
