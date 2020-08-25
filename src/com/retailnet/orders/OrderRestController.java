package com.retailnet.orders;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.retailnet.cart.Cart;
import com.retailnet.cart.CartDAO;
import com.retailnet.inquiries.Inquiries;
import com.retailnet.inquiries.InquiriesDAO;
import com.retailnet.sector.Category;
import com.retailnet.user.Firm;
import com.retailnet.user.UserDAO;

@RestController
@RequestMapping("/Order/rest")
public class OrderRestController {

	@Autowired
	InquiriesDAO inquiriesDAO;
	
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping(value = "/fetchinquiriesofuserbyuserid",method = RequestMethod.GET)
	public int fetchCartOfUserByUserId(HttpServletRequest request,@ModelAttribute Order order)
	{
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		System.out.println("in Order rest controller");
		//System.out.println(user_id);
		Firm firm = userDAO.fetchFirmByUserId(user_id);
		
		int sellerId = firm.getFirmId();
		ArrayList<Inquiries> inquiries = inquiriesDAO.fetchAllInquiriesBySellerId(sellerId);
		System.out.println(inquiries.size());
		if(inquiries.isEmpty()) {
			int x = 0;
			return x;
		}
		
		int len = inquiries.size();
		
		return len;
	}
	
	@RequestMapping(value = "/fetchspecificationsofinquirybyinquiryid",method = RequestMethod.GET)
	public String fetchspecificationsOfInquiryByInquiryId(HttpServletRequest request,@RequestParam(value="table_id") int tableId)
	{
		System.out.println("In Order Rest Controller for fetching specifications");
		System.out.println(tableId);
		Inquiries inquiries = inquiriesDAO.fetchInquiryById(tableId);
		System.out.println(inquiries.getInquiryId());
		
		JSONParser jsonParser=new JSONParser();
		Object object = null;
		try {
			object = jsonParser.parse(inquiries.getProductSpecifications());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JSONArray specifications=(JSONArray) object;
		
		return specifications.toJSONString();
		
	}
}
