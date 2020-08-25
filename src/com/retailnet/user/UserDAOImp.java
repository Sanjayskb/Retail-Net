/**
 * 
 */
package com.retailnet.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.retailnet.location.Cities;
/**
 * @author ASUS
 *
 */
@Repository("userDAO")
public class UserDAOImp implements UserDAO {

	@Autowired
	protected SessionFactory sessionFactory;
	
	@Override
	public User insertUser(User user) 
	{
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try 
		{
			session.save(user);
			transaction.commit();
			return user;
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
	public User fetchUserById(int userId) {
		Session session = sessionFactory.openSession();		
		try {
			User user = (User) session.get(User.class, userId);
			return user;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public ArrayList<User> fetchAllUsers() {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<User> users = (ArrayList<User>) session.createCriteria(User.class).list();
			return users;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}
	@Override
	public ArrayList<User> fetchAllActiveUsers(int status) {
		Session session = sessionFactory.openSession();		
		try {
			
			@SuppressWarnings("unchecked")
			ArrayList<User> users = (ArrayList<User>) (ArrayList<User>) session.createCriteria(User.class).add(Restrictions.eq("user.status", status)).list();
			return users;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}
	
	@Override
	public boolean updateUser(User user) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			session.update(user);
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
	public int insertUserType(UserType userType) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try 
		{
			session.save(userType);
			transaction.commit();
			return userType.getUserTypeId();
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
	public UserType fetchUserTypeById(int userTypeId) {
		Session session = sessionFactory.openSession();		
		try {
			UserType userType = (UserType) session.get(UserType.class, userTypeId);
			return userType;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public ArrayList<UserType> fetchAllUserTypes() {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<UserType> userTypes = (ArrayList<UserType>) session.createCriteria(UserType.class).list();
			return userTypes;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public User fetchUserByUsername(String username) {
		ArrayList<User> users;
		Session session = sessionFactory.openSession();		
		try {
			users = (ArrayList<User>) session.createCriteria(User.class).add(Restrictions.eq("user.username", username)).list();
			return users.get(0);
			
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}
	
	@Override
	public boolean updateUserType(UserType userType) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			session.update(userType);
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
	public Firm insertFirm(Firm firm) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try 
		{
			session.save(firm);
			transaction.commit();
			return firm;
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
	public Firm fetchFirmById(int firmId) {
		Session session = sessionFactory.openSession();		
		try {
			Firm firm = (Firm) session.get(Firm.class, firmId);
			return firm;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}
	
	@Override
	public Firm fetchFirmByUserId(int userId) {
		Session session = sessionFactory.openSession();	
		try {
			
			Firm firm = (Firm) session.createCriteria(Firm.class).add(Restrictions.eq("user.id",userId)).uniqueResult();
			return firm;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public ArrayList<Firm> fetchAllFirm() {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Firm> firm = (ArrayList<Firm>) session.createCriteria(Firm.class).list();
			return firm;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}
	
	@Override
	public ArrayList<Firm> fetchAllOtherFirms(int userId) {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Firm> firm = (ArrayList<Firm>) session.createCriteria(Firm.class).add(Restrictions.ne("user.userId", userId)).list();
			return firm;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}
	
	@Override
	public boolean updateFirm(Firm firm) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			session.update(firm);
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
	public User validateCredentials(String username, String password) {
		Session session = sessionFactory.openSession();
		List users = null;
		
		users = session.createCriteria(User.class)
				.add(Restrictions.eq("username", username))
				.add(Restrictions.eq("password", password))
				.list();
		
		if(users.size() > 0 && users != null) {
			return (User) users.get(0);
		}else {
			return null;
		}
	}
	
	@Override
	public User validateCredentialsWithEmail(String email, String password) {
		Session session = sessionFactory.openSession();
		List users = null;
		
		users = session.createCriteria(User.class)
				.add(Restrictions.eq("email", email))
				.add(Restrictions.eq("password", password))
				.list();
		
		if(users.size() > 0 && users != null) {
			return (User) users.get(0);
		}else {
			return null;
		}
	}

	@Override
	public User validateEmail(String email) {
		Session session = sessionFactory.openSession();
		List users = null;
		
		users = session.createCriteria(User.class)
				.add(Restrictions.eq("email", email))
				
				.list();
		
		if(users.size() > 0 && users != null) {
			return (User) users.get(0);
		}else {
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<Firm> searchFirmByKeywords(String keywords) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();

		try 
		{
			
			ArrayList<String> keywordsarray = new ArrayList<String>();
			StringTokenizer substrings = new StringTokenizer(keywords);
			
			ArrayList<Firm> firms = new ArrayList<Firm>();
			System.out.println(keywords);
			String where = "";
			String qry;
			while(substrings.hasMoreTokens())
			{
				String key = substrings.nextToken();
				keywordsarray.add(key);
			}
			System.out.println("No of Keywords:"+keywordsarray.size());
			for(String key : keywordsarray)
			{
				where += "(firm_name LIKE '%"+key+"%') OR";
			}
			where = where.substring(0, where.length()-2);
			qry = "SELECT distinct * FROM `master_firm_detail` WHERE "+ where;
			
			
				SQLQuery query = session.createSQLQuery(qry);
				List<Object[]> rows =  query.list();
				System.out.println("No of row searched:"+ rows.size());
				for(Object[] row : rows) {
				Firm firm = new Firm();
				firm.setFirmId((Integer)row[0]);
				firm.setFirmName((String)row[1]);
				firm.setFirmEmail((String)row[2]);	
				firm.setGstNo((String)row[3]);
				firm.setPanNo((String)row[4]);
				firm.setFirmContactNo((String)row[5]);
				User user = new User();
				user.setUserId((Integer)row[6]);
				firm.setUser(user);
				Cities city = new Cities();
				city.setCityId((Integer)row[7]);
				firm.setCities(city);
				firm.setStatus((Integer)row[8]);
					firms.add(firm);
				
									
			}
			
			
			transaction.commit();
			return firms;
			
		}
		catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}
	
	@Override
	public FirmImageMapping insertProfileImage(FirmImageMapping firmImageMapping) {
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		
		try {
			session.save(firmImageMapping);
			transaction.commit();
			return firmImageMapping;
		}
		
		catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
			return null;
		} 
		
		finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public FirmImageMapping fetchProfileImageById(int mappingId) {
		Session session = sessionFactory.openSession();		
		try {
			
			FirmImageMapping  firmImageMapping = (FirmImageMapping) session.get(FirmImageMapping.class, mappingId);
			return firmImageMapping;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}	
	}

	@Override
	public HashMap<Integer, String> fetchProfileImagesByFirmId(String firmId) {
		Session session = sessionFactory.openSession();
		
		@SuppressWarnings("unused")
		Transaction transaction = session.beginTransaction();
		HashMap<Integer, String> imageMap = new HashMap<Integer, String>();
		try {
			
			String qry = "SELECT firm_id , file_name FROM master_firm_image_mapping GROUP by firm_id HAVING firm_id in ("+firmId+")";
			System.out.println(qry);
			
			SQLQuery query = session.createSQLQuery(qry);
			@SuppressWarnings("unchecked")
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


	
	}

	

	

	


	

