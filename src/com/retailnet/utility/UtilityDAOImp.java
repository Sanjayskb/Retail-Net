package com.retailnet.utility;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("UtilityDAO")

public class UtilityDAOImp implements UtilityDAO {

	@Autowired
	protected SessionFactory sessionFactory;
	
	@Override
	public Search insertSearch(Search search) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try 
		{
			//String qry = "Insert into search_";
			
			session.save(search);
			transaction.commit();
			return search;
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


	
}
