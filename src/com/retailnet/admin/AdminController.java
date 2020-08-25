package com.retailnet.admin;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.retailnet.location.States;
import com.retailnet.products.ProductImage;
import com.retailnet.products.Products;
import com.retailnet.products.ProductsDAO;
import com.retailnet.user.Firm;
import com.retailnet.user.User;
import com.retailnet.user.UserDAO;
import com.retailnet.user.UserType;
import com.retailnet.inquiries.Inquiries;
import com.retailnet.inquiries.InquiriesDAO;
import com.retailnet.location.Cities;
import com.retailnet.location.LocationDAO;;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	UserDAO userDAO;
	
	@Autowired
	ProductsDAO productsDAO;
	
	@Autowired
	AdminDAO adminDAO;
	
	@Autowired
	LocationDAO locationDAO;
	
	@Autowired
	InquiriesDAO inquiriesDAO;
	
	@RequestMapping("/adminlogin")
	public String openAdminLogin(ModelMap modelMap, HttpServletRequest request)
	{
		return "/adminview/adminlogin";
	}
	
	@RequestMapping("/lockscreen")
	public String openlockscreen(ModelMap modelMap, HttpServletRequest request)
	{
		return "/adminview/lockscreen";
	}
	
	@RequestMapping("/adminloginaction")
	public String AdminLoginAction(ModelMap modelMap, HttpServletRequest request,@RequestParam("email") String email,@RequestParam("password") String password)
	{
		
		if(email.equals("admin@admin.admin") && password.equals("admin"))
		{
			HttpSession session = request.getSession();
		    session.setAttribute("email",email);
		    
			return "redirect:/admin/adminindex";	
		}
		return "redirect:/admin/adminlogin";
	}
	

	@RequestMapping("/adminindexfromlockscreen")
	public String adminindexfromlockscreen(ModelMap modelMap, HttpServletRequest request,@RequestParam("password") String password)
	{
		if(password.equals("admin")) {
		return "redirect:/admin/adminindex";
		}
		else {
			return "redirect:/adminview/lockscreen";
		}
	}
	@RequestMapping(method = RequestMethod.GET, value="/Adduserbyadmin")
	public ModelAndView openRegisterPage() {
		ArrayList<UserType> userTypes = userDAO.fetchAllUserTypes();
		System.out.println("userTypes length :" + userTypes.size());
		ModelAndView modelAndView = new ModelAndView("/adminview/adduser");
		modelAndView.addObject("userTypes", userTypes);
		return modelAndView;
	}
	
	@RequestMapping(method = RequestMethod.POST, value="/adduseraction")
	public ModelAndView registerAction( @ModelAttribute("user") User user, @RequestParam("userTypeId") int userTypeId, final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		
		
		UserType userType = userDAO.fetchUserTypeById(userTypeId);
		user.setUserType(userType);
		System.out.println(userTypeId);
		user.printObj();
		user = userDAO.insertUser(user);
		
		
		redirectAttributes.addFlashAttribute("userId", user.getUserId());
		
		HttpSession session = request.getSession();
		session.setAttribute("user_id",user.getUserId());
		
		ArrayList<States> states = locationDAO.fetchAllStates();
		for(States states2 : states)
		{
			System.out.println(states2.getStateName());
		}
		
		ModelAndView modelAndView = new ModelAndView("/adminview/addfirmbyadmin");
		modelAndView.addObject("states",states);
		

		return modelAndView;

	}
	
	@RequestMapping(method = RequestMethod.POST, value="/addfirmdetails")
	//public String registerAction2(ModelMap modelMap, @ModelAttribute("manufacturer") User user, @RequestParam("userTypeId") int userTypeId) {
	public String registerAction2(ModelMap modelMap, @ModelAttribute("firm") Firm firm,
			RedirectAttributes redirectAttributes, HttpServletRequest request,@RequestParam("cityId") int cityId,@ModelAttribute Cities cities) 
	{	
		//User user = userDAO.fetchUserById(userId);
		//manufacturer.setUser(user);
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("user_id");
		System.out.println("user_id from session:"+ user_id);
		System.out.println("City:::::::"+cities.getCityId() );
		
		User user = new User();
		user.setUserId(user_id);
		firm.setUser(user);
		firm.setCities(cities);
		firm.printObj();
		firm = userDAO.insertFirm(firm);
		
		if(firm.getFirmId() > 0) {
			redirectAttributes.addAttribute("message", "Firm Registration is Successful..");
		}else {
			redirectAttributes.addAttribute("error", "Something Went Wrong in Manufacturer Registration");
		}
		return "redirect:/admin/adminindex";

	}
	
	@RequestMapping("/adminindex")
	public String openAdminIndex(ModelMap modelMap, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		if(session.getAttribute("email") == null)
		{
			return "redirect:/admin/adminlogin";
		}
		else {
		ArrayList<User> users = userDAO.fetchAllUsers();
		ArrayList<Products> products = productsDAO.fetchAllProducts();
		ArrayList<Help> helps = adminDAO.fetchAllHelps();
		ArrayList<Inquiries> inquries = inquiriesDAO.fetchAllInquiries();
		int productsize = products.size();
		int usersize = users.size();
		System.out.println("size :::::"+usersize);
		System.out.println(productsize);
		modelMap.addAttribute("users", users);
		modelMap.addAttribute("products",products);
		modelMap.addAttribute("help",helps);
		modelMap.addAttribute("inquiries",inquries);
		
		return "/adminview/index";
		}
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/allusers")
	public String fetchallusers(ModelMap modelMap,
			final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		
//	HttpSession session = request.getSession();
//	int user_id = (int)session.getAttribute("userId");
	
	ArrayList<User> users = userDAO.fetchAllUsers();
	
	modelMap.addAttribute("users", users);
		
	return null;
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/Firmgrid")
	public String fetchallfirms(ModelMap modelMap,
			final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		
//	HttpSession session = request.getSession();
//	int user_id = (int)session.getAttribute("userId");
	
	ArrayList<Firm> firm = userDAO.fetchAllFirm();
	
	modelMap.addAttribute("firm", firm);
		
	return "/adminview/Firmgrid";
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/Activeproductgrid")
	public String browseAllActiveProducts(ModelMap modelMap,
			final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		

	ArrayList<Products> products = productsDAO.fetchAllProducts();
	ArrayList<Products> activeproducts = new ArrayList<Products>();
	System.out.println(products.size());
	for (Products products2 : products) {
		if(products2.getStatus()>0)
		{
			activeproducts.add(products2);
		}
	}
	modelMap.addAttribute("products", activeproducts);
		
	return "/adminview/Activeproductsgrid";
	} 
	
	@RequestMapping(method = RequestMethod.GET, value="/Inactiveproductgrid")
	public String browseAllInactiveProducts(ModelMap modelMap,
			final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		

	ArrayList<Products> products = productsDAO.fetchAllProducts();
	ArrayList<Products> inactiveproducts = new ArrayList<Products>();
	System.out.println(products.size());
	for (Products products2 : products) {
		if(products2.getStatus()==0)
		{
			inactiveproducts.add(products2);
		}
	}
	modelMap.addAttribute("products", inactiveproducts);
		
	return "/adminview/Inactiveproductsgrid";
	} 
	
	@RequestMapping(method = RequestMethod.GET, value="/allhelp")
	public String fetchallhelp(ModelMap modelMap,
			final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		
//	HttpSession session = request.getSession();
//	int user_id = (int)session.getAttribute("userId");
	
	ArrayList<Help> helps = adminDAO.fetchAllHelps();
	
	modelMap.addAttribute(helps);
		
	return null;
	}
	
	@RequestMapping("/Activeusergrid")
	public String showActiveUsers(ModelMap modelMap, HttpServletRequest request)
	{
	
		ArrayList<User> users = userDAO.fetchAllUsers();
		ArrayList<User> activeusers = new ArrayList<User>();
		System.out.println("Total no. of users fetched : "+users.size());
		for(User user : users)
		{
			if(user.getStatus() != 0)
			{
				activeusers.add(user);
			}
			
		}
		
		modelMap.addAttribute("activeusers", activeusers);
		return "/adminview/Activeusergrid";
	}
	@RequestMapping("/Inactiveusergrid")
	public String showInactiveUsers(ModelMap modelMap, HttpServletRequest request)
	{
	
		ArrayList<User> users = userDAO.fetchAllUsers();
		ArrayList<User> inactiveusers = new ArrayList<User>();
		System.out.println("Total no. of users fetched : "+users.size());
		for(User user : users)
		{
			if(user.getStatus() == 0)
			{
				inactiveusers.add(user);
			}
			
		}
		
		modelMap.addAttribute("users", inactiveusers);
		return "/adminview/Inactiveusergrid";
	}
	
	
	@RequestMapping("/gallery")
	public String showGallery(ModelMap modelMap, HttpServletRequest request)
	{
		
		return "/adminview/gallery";
	}
	
	@RequestMapping("/deleteuser/{userId}")
	public String deleteuser(ModelMap modelMap,@PathVariable("userId") int userId, HttpServletRequest request)
	{
		User user = userDAO.fetchUserById(userId);
		user.setStatus(0);
		Firm firm = userDAO.fetchFirmByUserId(userId);
		firm.setStatus(0);
		userDAO.updateFirm(firm);
		userDAO.updateUser(user);
		
		return "redirect:/admin/Activeusergrid";
	}
	
	@RequestMapping("/activateuser/{userId}")
	public String activateuser(ModelMap modelMap,@PathVariable("userId") int userId, HttpServletRequest request)
	{
		User user = userDAO.fetchUserById(userId);
		user.setStatus(1);
		Firm firm = userDAO.fetchFirmByUserId(userId);
		firm.setStatus(1);
		userDAO.updateFirm(firm);
		userDAO.updateUser(user);
		
		return "redirect:/admin/Inactiveusergrid";
	}
	
	@RequestMapping("/showproductimages/{productId}")
	public String showproductimages(ModelMap modelMap,@PathVariable("productId") int productId, HttpServletRequest request)
	{
		Products products = productsDAO.fetchProductById(productId);
		ArrayList<ProductImage> productImages = productsDAO.fetchImageByProductId(productId);
		modelMap.addAttribute("images", productImages);
		modelMap.addAttribute("product", products);
		
		return "/adminview/productgallery";
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/messagegrid")
	public String browseAllUserMessages(ModelMap modelMap,
			final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		
		ArrayList<Help> help = adminDAO.fetchAllHelps();
		System.out.println(help.size());
		modelMap.addAttribute("helps", help);
		return "/adminview/usermessagegrid";
	}
	
	@RequestMapping("/deletemessage/{tableId}")
	public String deletemessage(ModelMap modelMap,@PathVariable("tableId") int tableId, HttpServletRequest request)
	{
		boolean x;
		x = adminDAO.deleteHelp(tableId);
		return "redirect:/admin/messagegrid";
	}
	
	@RequestMapping("/viewmessage/{tableId}")
	public String viewusermessage(ModelMap modelMap,@PathVariable("tableId") int tableId, HttpServletRequest request)
	{
		Help help = adminDAO.fetchHelpById(tableId);
		modelMap.addAttribute("help", help);
		return "/adminview/viewmessage";
	}
	
	
}
	

