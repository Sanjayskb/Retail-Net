/**
 * 
 */
package com.retailnet.orders;

import java.util.ArrayList;



/**
 * @author ASUS
 *
 */
public interface OrdersDAO {
	
	public int insertOrder(Order order);
	public Order fetchProductById(int orderId);
	public ArrayList<Order> fetchAllOrdersBySellerId(int sellerId);

}
