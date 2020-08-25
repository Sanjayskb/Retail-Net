package com.retailnet.cart;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/Cart/rest")
public class CartRestController {
	
	@Autowired
	CartDAO cartDAO;
	
	@RequestMapping(value = "/fetchcartofuserbyuserid",method = RequestMethod.GET)
	public int fetchCartOfUserByUserId(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		System.out.println("in cart rest controller");
		System.out.println(user_id);
		
		ArrayList<Cart> cart = cartDAO.fetchMyCart(user_id);
		if(cart.isEmpty()) {
			int x = 0;
			return x;
		}
		
		int len = cart.size();
		
		return len;
	}
	
	@RequestMapping(value="/removefromcart",method = RequestMethod.GET)
	public boolean removeFromCart(@RequestParam(value="cart_id") int cartId)
	{
		
		System.out.println("cart id is :::::::::::::::::::::::::::::"+cartId);
		boolean x;
		x=cartDAO.removefromCart(cartId);
		System.out.println(cartId+" removed from cart "+x);
		return x;
	}
	
}
