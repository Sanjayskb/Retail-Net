package com.retailnet.cart;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

import com.retailnet.products.ProductImage;
import com.retailnet.products.Products;
import com.retailnet.products.ProductsDAO;
import com.retailnet.sector.Sector;
import com.retailnet.user.User;
import com.retailnet.user.UserDAO;

@Controller
@RequestMapping("/cart")

public class CartController {
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ProductsDAO productsDAO;
	
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping("/mycart")
	public ModelAndView opencartPage(ModelMap modelMap, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		ModelAndView modelAndView = new ModelAndView("cart");
			ArrayList<Cart> carts = cartDAO.fetchMyCart(user_id);
			if(carts.isEmpty())
			{
				
				return modelAndView;
			}
			System.out.println("in mycart--------------------------");
		    String cartIdList = "";
		    
		    for (Cart cart : carts) {
		    	cartIdList += cart.getProduct().getProductId()+",";
		    }
		    cartIdList = cartIdList.substring(0, cartIdList.length()-1);
		    System.out.println("Card Id List :"+cartIdList);
		    HashMap<Integer, String> productImages = cartDAO.fetchCartProductImagesByProductId(cartIdList);
		    
//			List <ProductImage> productImages = (List<ProductImage>) productsDAO.fetchImageByProductId(productId);
			System.out.println("Cart Length : "+carts.size());
			
			for (Integer name: productImages.keySet()){
	            String key = name.toString();
	            String value = productImages.get(name).toString();  
	            System.out.println(key + " " + value);  
			} 
			for(Cart cart2 : carts) {
				cart2.printObj();
				cart2.getProduct().setFirstImageName(productImages.get(cart2.getProduct().getProductId()));
				
			}
			for(Cart cart2 : carts) {
				System.out.println("First Image : "+cart2.getProduct().getFirstImageName());
			}
		
			
			modelAndView.addObject("cart", carts);
			return modelAndView;
		}
	

	
	@RequestMapping(method = RequestMethod.GET, value="/mycartaction/{productId}")
	public String myProductCart(ModelMap modelMap,
			final RedirectAttributes redirectAttributes,@PathVariable("productId") int productId,@RequestParam("quantity") int quantity,
			HttpServletRequest request) {
		System.out.println("Inside mycartaction");
	HttpSession session = request.getSession();
	int user_id = (int)session.getAttribute("userId");
	Products product = productsDAO.fetchProductById(productId);
	
	User user = userDAO.fetchUserById(user_id);
	
	Cart cart = new Cart();

	cart.setUser(user);
	cart.setProduct(product);
	cart.setQuantity(quantity);
	cart.setStatus(1);
	cart = cartDAO.insertCart(cart);
	
	
	
		
	return "redirect:/cart/mycart";
	} 

	@RequestMapping(method = RequestMethod.GET, value="/removefromcart/{cartId}")
	public String removeFromCart(ModelMap modelMap,@PathVariable("cart_id") int cartId)
	{
		boolean x;
		x=cartDAO.removefromCart(cartId);
		System.out.println(cartId+" removed from cart "+x);
		return "redirect:/cart/mycart";
	}
}
