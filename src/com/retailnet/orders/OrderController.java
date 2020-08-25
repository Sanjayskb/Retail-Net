package com.retailnet.orders;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.retailnet.gst.GstDAO;
import com.retailnet.gst.Unit;
import com.retailnet.inquiries.Inquiries;
import com.retailnet.inquiries.InquiriesDAO;
import com.retailnet.products.ProductImage;
import com.retailnet.products.Products;
import com.retailnet.products.ProductsDAO;
import com.retailnet.user.Firm;
import com.retailnet.user.User;
import com.retailnet.user.UserDAO;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	OrdersDAO ordersDAO;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	ProductsDAO productsDAO;
	
	@Autowired
	GstDAO gstDAO;
	
	@Autowired
	InquiriesDAO inquiriesDAO;
	
	
	@RequestMapping("/contacttosupplier/{productId}")
	public String openContactToSupplier(ModelMap modelMap, HttpServletRequest request,@PathVariable("productId") int productId)
	{
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
	
		ArrayList<ProductImage> productImages = productsDAO.fetchImageByProductId(productId);
		Products product = productsDAO.fetchProductById(productId);		
		
		Firm firm = userDAO.fetchFirmByUserId(product.getFirm().getUser().getUserId());
		
		if(productImages.size()>0) {
			System.out.println("image name ::::::::::::"+productImages.get(0).getimageName());
			product.setFirstImageName(productImages.get(0).getimageName());
		}
		
		
		
		JSONParser jsonParser=new JSONParser();
		Object object = null;
		try {
			if(product.getSpecifications()!= null)
			{
			object = jsonParser.parse(product.getSpecifications());
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(product.getSpecifications()!= null)
		{
		JSONArray specifications=(JSONArray) object;
		modelMap.addAttribute("specifications", specifications);
		}
	
		modelMap.addAttribute("product", product);
		
		modelMap.addAttribute("firm", firm);
					return "contactSupplier";
		
	}
	
	@RequestMapping("/contacttosupplierAction/{productId}")
	public String SaveInquiry(ModelMap modelMap, HttpServletRequest request,@PathVariable("productId") int productId,@ModelAttribute("inquiries") Inquiries inquiries)
	{
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		Products product = productsDAO.fetchProductById(productId);
		
		User user = userDAO.fetchUserById(user_id);
		String prodname = product.getProductName();
		int seller_id = product.getFirm().getUser().getUserId();
		Firm sellerfirm = userDAO.fetchFirmByUserId(seller_id);
		Firm buyerfirm = userDAO.fetchFirmByUserId(user_id);
		Date today = Calendar.getInstance().getTime();
		DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");  
		String strDate = dateFormat.format(today); 
		System.out.println(today);
		String inquiryid = user_id + prodname + seller_id;
		System.out.println("inquiry id made is ::::::" + inquiryid);
		inquiries.setInquiryId(inquiryid);
		inquiries.setProducts(product);
		inquiries.setInquiryDate(strDate);
		inquiries.setBuyerId(buyerfirm);
		inquiries.setSellerId(sellerfirm);
		
		inquiries = inquiriesDAO.insertInquiries(inquiries);
		
		return "redirect:/user/index";
	}
	
	@RequestMapping("/myinquiries")
	public String openMyInquiries(ModelMap modelMap, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		Firm firm = userDAO.fetchFirmByUserId(user_id);
		int sellerId = firm.getFirmId();
		ArrayList<Inquiries> inquiries = inquiriesDAO.fetchAllInquiriesBySellerId(sellerId);
		
		modelMap.addAttribute("inquiries", inquiries);
		
		
		return "myInquiries";
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/removefrominquiries/{tableId}")
	public String removeFromCart(ModelMap modelMap,@PathVariable("tableId") int tableId)
	{
		boolean x;
		x=inquiriesDAO.removeInquiryById(tableId);
		System.out.println(tableId+" removed from inquiries "+x);
		return "redirect:/order/myInquiries";
	}
	
	
	
	
	
	
}