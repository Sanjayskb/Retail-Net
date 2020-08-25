/**
 * 
 */
package com.retailnet.products;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.HashMap;

import javax.annotation.Resource;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.retailnet.cart.Cart;
import com.retailnet.gst.Gst;
import com.retailnet.gst.Unit;
import com.retailnet.inquiries.Inquiries;
import com.retailnet.sector.Category;
import com.retailnet.user.Firm;



/**
 * @author ASUS
 *
 */
@Repository("productsDAO")
public class ProductsDAOImp implements ProductsDAO{
	
	
	@Resource(name="sessionFactory")
	protected SessionFactory sessionFactory;
	
	@Override
	public Products insertProduct(Products product) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try 
		{
			session.save(product);
			transaction.commit();
			return product;
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
	public boolean updateProduct(Products product) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			session.update(product);
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
	public Products fetchProductById(int productId) {
		Session session = sessionFactory.openSession();		
		try {
			Products products = (Products) session.get(Products.class, productId);
			return products;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}

		
	}

	@Override
	public ArrayList<Products> fetchAllProducts() {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Products> products = (ArrayList<Products>) session.createCriteria(Products.class).list();
			return products;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public ArrayList<Products> fetchAllOtherProducts(int firmId) {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Products> products = (ArrayList<Products>) session.createCriteria(Products.class).add(Restrictions.ne("firm.firmId",firmId)).list();
			return products;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public ArrayList<Products> fetchAllOtherProductsdesc(int firmId) {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Products> products = (ArrayList<Products>) session.createCriteria(Products.class).add(Restrictions.ne("firm.firmId",firmId)).addOrder(Order.desc("firm.firmId")).setFetchSize(8).list();
			return products;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public ProductImage insertProductImage(ProductImage productImage) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try 
		{
			session.save(productImage);
			transaction.commit();
			return productImage;
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
	public ArrayList<Products> fetchMyProducts(int firmId) {
		
		Session session = sessionFactory.openSession();
		
		
		try 
		{
			@SuppressWarnings("unchecked")
			ArrayList<Products> products = (ArrayList<Products>) session.createCriteria(Products.class).add(Restrictions.eq("firm.firmId",firmId)).list();
			return products;
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
	public ArrayList<ProductImage> fetchImageByProductId(int productId) {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<ProductImage> productImage = (ArrayList<ProductImage>) session.createCriteria(ProductImage.class)
										.add(Restrictions.eq("product.productId",productId)).list();
			return productImage;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}

		
	}

	@Override
	public ProductImage fetchProductImageById(int imageId) {
		Session session = sessionFactory.openSession();		
		try {
			ProductImage productImage = (ProductImage) session.get(ProductImage.class, imageId);
			return productImage;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
		
	}

	@Override
	public ArrayList<Products> fetchProductsByCategoryId(int categoryId) {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Products> Products = (ArrayList<Products>) session.createCriteria(Products.class)
										.add(Restrictions.eq("category.id", categoryId))
										.list();
			return Products;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public ArrayList<Products> fetchAllOtherProductsByCategoryId(int firmId, int categoryId) {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Products> Products = (ArrayList<Products>) session.createCriteria(Products.class)
										.add(Restrictions.eq("category.id", categoryId)).add(Restrictions.ne("firm.firmId",firmId))
										.list();
			return Products;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	@Override
	public HashMap<Integer, String> fetchOtherProductImagesByProductId(String productId) {
		Session session = sessionFactory.openSession();
		
		HashMap<Integer, String> imageMap = new HashMap<Integer, String>();
		try {
			
			String qry = "SELECT product_id,image_name FROM product_images GROUP by product_id HAVING product_id in ("+productId+")";
			System.out.println(qry);
			
			SQLQuery query = session.createSQLQuery(qry);
			List<Object[]> rows = query.list();
			for(Object[] row : rows){
				/*Employee emp = new Employee();
				emp.setId(Long.parseLong(row[0].toString()));
				emp.setName(row[1].toString());
				emp.setSalary(Double.parseDouble(row[2].toString()));*/
				imageMap.put(Integer.parseInt(row[0].toString()), row[1].toString());
			}
			//@SuppressWarnings("unchecked")
			//HashMap<Integer, String>  productimage = (HashMap<Integer, String>)session.createSQLQuery(query).list();
			/*
			 * @SuppressWarnings("unchecked") ArrayList<HashMap<Integer, String>>
			 * productimage = (ArrayList<HashMap<Integer,
			 * String>>)session.createSQLQuery(query).list();
			 * try {
			SQLQuery query = session.createSQLQuery("SELECT product_id,image_name FROM ProductImage GROUP by product_id HAVING product_id in ("+productId+")");
			query.addEntity(ProductImage.class);
			query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
			@SuppressWarnings("rawtypes")
			List data = query.list();
			HashMap<Integer,String> row = new HashMap<Integer,String>();  
			for(Object object : data)
			{
				row = (HashMap<Integer,String>)object;
				System.out.println(((HashMap<Integer,String>) row).get("product_id")+" : "+row.get("image_name"));
			}
			transaction.commit();
			
			return row;
			 * HashMap<Integer, String> map = new HashMap<Integer, String>(); //Query q =
			 * session.
			 * createQuery("SELECT product_id,image_name FROM product_images GROUP by product_id HAVING product_id in ("
			 * +productId+")");
			 * 
			 * 
			 * // List<Object[]> collection1 = q.getResultList(); // for (HashMap result :
			 * productimage) { map.putAll(result); }
			 */
			    //return map;
			/*
			 * for (Map.Entry<Integer,String> entry : imageMap.entrySet()) {
			 * System.out.println("["+entry.getKey()+","+entry.getValue()+"]"); }
			 */
			return imageMap;
			//return productimage;
		}catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
		
	}

	@Override
	public boolean removeProduct(int productId) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
	    
		try {
			Products products = (Products)session.get(Products.class, productId);
			if(products!=null) {
				session.delete(products);
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
	public boolean removeProductImage(int imageId) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
	    
		try {
			ProductImage productImage = (ProductImage)session.get(ProductImage.class, imageId);
			if(productImage!=null) {
				session.delete(productImage);
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
	public boolean removeAllProductImageByProductId(int productId) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<ProductImage> productImage = (ArrayList<ProductImage>) session.createCriteria(ProductImage.class)
										.add(Restrictions.eq("product.productId",productId)).list();
			if(productImage!=null) {
				
				for(ProductImage productImage2 : productImage)
				{
					session.delete(productImage2);
					System.out.println("deleted successfully");
					
				}
				transaction.commit();
			}
			
			return true;	
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
	public boolean checkInInquiries(int sellerId,int productId) {
Session session = sessionFactory.openSession();
		
		
		try 
		{
			@SuppressWarnings("unchecked")
			List<Inquiries> inquiries =  session.createCriteria(Inquiries.class).add(Restrictions.eq("sellerId.firmId",sellerId)).add(Restrictions.eq("products.productId",productId)).list();
			if(inquiries.size() > 0 && inquiries != null) {
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

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<Products> searchProductByKeywords(String keywords) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();

		try 
		{
			
			ArrayList<String> keywordsarray = new ArrayList<String>();
			StringTokenizer substrings = new StringTokenizer(keywords);
			ArrayList<Products> product2 = new ArrayList<Products>();
		
			String where = "";
			String qry;
			System.out.println(keywords);
			while(substrings.hasMoreTokens())
			{
				String key = substrings.nextToken();
				keywordsarray.add(key);
			}
			System.out.println("No of Keywords:"+keywordsarray.size());
			
			for(String key : keywordsarray)
			{
				where += "(product_name LIKE '%"+key+"%') OR (brand_name LIKE '%"+key+"%') OR (product_specification LIKE '%"+key+"%') OR (description LIKE '%"+key+"%')"+"OR";
			}
			where = where.substring(0, where.length()-2);
			qry = "SELECT distinct * FROM `products` WHERE " + where;
			
				SQLQuery query = session.createSQLQuery(qry);
				List<Object[]> rows =  query.list();
				System.out.println("No of row searched:"+ rows.size());
				for(Object[] row : rows) {
					Products singleProduct = new Products();
					singleProduct.setProductId((Integer)row[0]);
					Firm firm = new Firm();
					firm.setFirmId((Integer)row[1]);
					singleProduct.setFirm(firm);
					singleProduct.setQuantity((Integer)row[2]);
					singleProduct.setRate((Integer)row[3]);
					singleProduct.setProductName((String)row[4]);
					singleProduct.setDescription((String)row[5]);
					singleProduct.setPrice((Integer)row[6]);
					 Date date = (Date) row[7]; 
		                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd ");  
		                String strDate = dateFormat.format(date); 
		                
		            singleProduct.setDateOfManufacturing(strDate);    

					Gst gst = new Gst();
					gst.setGstId((Integer)row[8]);
					singleProduct.setGst(gst);
					Unit unit = new Unit();
					unit.setUnitId((Integer)row[9]);
					singleProduct.setUnit(unit);
					Category category = new Category();
					category.setCategoryId((Integer)row[10]);
					singleProduct.setCategory(category);
					singleProduct.setBrandName((String)row[11]);
				    singleProduct.setSpecifications((String)row[12]);
					singleProduct.setStatus((Integer)row[13]);
					singleProduct.setAvailability((Integer)row[14]);
					
					
					product2.add(singleProduct);
				
									
			}
			
			
			transaction.commit();
			return product2;
			
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
	public ArrayList<Products> sortProductsByPriceHtL() {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Products> products = (ArrayList<Products>) session.createCriteria(Products.class).addOrder(Order.desc("price")).list();
			return products;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}
	
	@Override
	public ArrayList<Products> sortProductsByPriceLtH() {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Products> products = (ArrayList<Products>) session.createCriteria(Products.class).addOrder(Order.asc("price")).list();
			return products;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}
	
	@Override
	public ArrayList<Products> sortProductsByPrice(int firmId) {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Products> products = (ArrayList<Products>) session.createCriteria(Products.class).add(Restrictions.ne("firm.firmId", firmId)).addOrder(Order.asc("price")).list();
          return products;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}
	
	@Override
	public ArrayList<Products> sortProductsByName(int firmId) {
		Session session = sessionFactory.openSession();		
		try {
			@SuppressWarnings("unchecked")
			ArrayList<Products> products = (ArrayList<Products>) session.createCriteria(Products.class).add(Restrictions.ne("firm.firmId", firmId)).addOrder(Order.asc("productName")).list();

			return products;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		} finally {
            if (session != null && session.isOpen())
                session.close();
		}
	}

	
	

	

	
}
