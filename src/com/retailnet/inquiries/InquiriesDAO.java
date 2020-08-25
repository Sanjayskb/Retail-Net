/**
 * 
 */
package com.retailnet.inquiries;

import java.util.ArrayList;



/**
 * @author ASUS
 *
 */
public interface InquiriesDAO {
	
	public  Inquiries insertInquiries(Inquiries Inquiries);
	public Inquiries fetchInquiryById(int tableId);
	public ArrayList<Inquiries> fetchInquiryByProductId(int productId);
	public ArrayList<Inquiries> fetchAllInquiries();
	public ArrayList<Inquiries> fetchAllInquiriesBySellerId(int sellerId);
	public ArrayList<Inquiries> fetchAllInquiriesByBuyerId(int buyerId);
	public boolean removeInquiryById(int tableId);
}
