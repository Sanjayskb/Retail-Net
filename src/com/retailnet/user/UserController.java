package com.retailnet.user;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.mail.*;    
import javax.mail.internet.*;    

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
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
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.retailnet.admin.AdminDAO;
import com.retailnet.admin.Help;
import com.retailnet.gst.Gst;
import com.retailnet.location.LocationDAO;
import com.retailnet.location.States;
import com.retailnet.location.Cities;
import com.retailnet.products.ProductImage;
import com.retailnet.products.Products;
import com.retailnet.products.ProductsDAO;
import com.retailnet.sector.Category;
import com.retailnet.sector.Sector;
import com.retailnet.sector.SectorDAO;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	AdminDAO adminDAO;
	
	@Autowired
	SectorDAO sectorDAO;
	
	@Autowired
	LocationDAO locationDAO;
	
	@Autowired
	ProductsDAO productsDAO;
	
	@RequestMapping("/login")
	public String openLogin(ModelMap modelMap, Model model)
	{
		System.out.println("message in login : "+ model.asMap().get("message"));
		System.out.println("error in Login: "+ model.asMap().get("error"));
		modelMap.addAttribute("message",model.asMap().get("message"));
		modelMap.addAttribute("error",model.asMap().get("error"));
		
		return "login";
	}
	
	
	@RequestMapping(method = RequestMethod.POST, value="/loginAction")
    public String loginAction(@RequestParam("username") String username, @RequestParam("password") String password,HttpServletRequest request ,HttpServletResponse response,
    		final RedirectAttributes redirectAttributes) throws ServletException, IOException
    {
		System.out.println("username : " + username);
	
		System.out.println("password : " + password);
		//User user2 = new User();
		User user = userDAO.validateCredentialsWithEmail(username, password);
		if(user == null)
		{
			 user = userDAO.validateCredentials(username, password);
		}
		
		if(user != null ) {
			HttpSession session = request.getSession();
			session.setAttribute("username",username);
			session.setAttribute("userId",user.getUserId());
			if(user.getStatus()==0) {
				redirectAttributes.addFlashAttribute("error", "Blocked By Admin");
				return "redirect:/user/login/";
			}else {
				return "redirect:index";
			}
			
		
			
		} else {
			
	
			
			//PrintWriter out = response.getWriter();
			//out.print("Incorrect Username or Password");
			System.out.println("Incorrect Username or Password");
			redirectAttributes.addFlashAttribute("error", "Incorrect Username or Password");
			return "redirect:/user/login/";
		}
		
    }
	
	@RequestMapping("/index")
	public String openIndex(ModelMap modelMap, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		if((session.getAttribute("username") == null || session.getAttribute("email")== null) && session.getAttribute("userId") == null) {
			return "redirect:login";
		} else {
			
		
			int user_id = (int)session.getAttribute("userId");
			System.out.println("id::::::::::::::::"+user_id);
			Firm myfirm = userDAO.fetchFirmByUserId(user_id);
			int firmid = myfirm.getFirmId();
			ArrayList<Products> products = productsDAO.fetchAllProducts();
			for (Products products2 : products) {
				if(products2.getSorting() == 1)
				{
				products2.setSorting(0);
				productsDAO.updateProduct(products2);
				}
				}

			ArrayList<Firm> firm = userDAO.fetchAllFirm();
			ArrayList<Sector> sectors = sectorDAO.fetchAllSectors();
			System.out.println(firm.size());
			String firmlist = "";
			for(Firm firm2 : firm)
			{
				firmlist += firm2.getFirmId() +",";
			}
			firmlist = firmlist.substring(0, firmlist.length()-1);
			HashMap<Integer, String> firmimages = userDAO.fetchProfileImagesByFirmId(firmlist);
			for (Integer name: firmimages.keySet()){
	            String key = name.toString();
	            String value = firmimages.get(name).toString();  
	            System.out.println(key + " " + value);  
	    	} 
			for(Firm firm3 : firm)
			{
				firm3.setProfileImageName(firmimages.get(firm3.getFirmId()));
			}
			
			for (Firm firm3 : firm) {
	    		System.out.println("Profile ImageName of Firm : "+ firm3.getProfileImageName());
	    	}
			
			ArrayList<Products> products2 = productsDAO.fetchAllOtherProductsdesc(firmid);
			
			String productIdList = "";
			
			for (Products prdct : products2) {
				productIdList += prdct.getProductId() + ",";
			}
			productIdList = productIdList.substring(0,productIdList.length()-1);
			System.out.println(productIdList);
			
			HashMap<Integer, String> productImages = productsDAO.fetchOtherProductImagesByProductId(productIdList);
			
			for (Integer name: productImages.keySet()){
	            String key = name.toString();
	            String value = productImages.get(name).toString();  
	            System.out.println(key + " " + value);  
			} 
			
			for (Products products3 : products2) {
				products3.printObj();
				products3.setFirstImageName(productImages.get(products3.getProductId()));
			}
			
			for (Products products3 : products2) {
				System.out.println("First Image : "+ products3.getFirstImageName());
			}
			
			modelMap.addAttribute("Firm",firm);
			modelMap.addAttribute("sectors", sectors);
			modelMap.addAttribute("products", products2);
			return "index";
		}
	}
	
	@RequestMapping("/contactus")
	public String openContactUs(ModelMap modelMap, HttpServletRequest request)
	{
		
		return "contact";
	}
	
	@RequestMapping("/contactusaction")
	public String SaveHelp(ModelMap modelMap, HttpServletRequest request,@ModelAttribute("help") Help help)
	{
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		User user = userDAO.fetchUserById(user_id);
		Date today = Calendar.getInstance().getTime();
		DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");  
		String strDate = dateFormat.format(today); 
		System.out.println(today);
		help.setUser(user);
		help.setDate(strDate);
		help = adminDAO.insertHelp(help);
		return "redirect:index";
	}
	
	
    
	@RequestMapping(method = RequestMethod.GET, value="/logOutAction")
	protected String processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
   {
       HttpSession session = request.getSession();
       if(session != null)
       {
           try
           {
               response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
               response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
               response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
               response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
               session.setAttribute("username",null);
               session.setAttribute("userId",null);
               session.removeAttribute("username");
               session.removeAttribute("userId");
               session.invalidate();
               
               System.out.println("session username : "+ session.getAttribute("username"));
               return "redirect:login";
           }
           catch(Exception e)
           {
               System.out.println(e.getMessage());
               System.out.println(e);
               return "redirect:login";
           }

       }
       else
       {

    	   return "redirect:login";
       }
   } 

	
	
	@RequestMapping(method = RequestMethod.GET, value="/register")
	public ModelAndView openRegisterPage() {
		ArrayList<UserType> userTypes = userDAO.fetchAllUserTypes();
		System.out.println("userTypes length :" + userTypes.size());
		ModelAndView modelAndView = new ModelAndView("register");
		modelAndView.addObject("userTypes", userTypes);
		return modelAndView;
	}
	

	     
     
     
	@RequestMapping(method = RequestMethod.POST, value="/registerAction")
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
		
		ModelAndView modelAndView = new ModelAndView("addFirm");
		modelAndView.addObject("states",states);
		
//		System.out.println(user.getUserId());
		return modelAndView;
//		if(userTypeId == 1) {
//			return "addManufacturer";
//		}
//		else if(userTypeId == 2) {
//			return "addDistributor";
//		}
//		else if(userTypeId == 3) {
//			return "addWholeseller";
//		}
//		else if(userTypeId == 4) {
//			return "addRetailer";
//		}
		
//		return "redirect:register";
//	} 
	}
	@RequestMapping(method = RequestMethod.POST, value="/registerAction2")
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
		return "redirect:login";

	}
	
	@RequestMapping(method = RequestMethod.GET,value="/forgot")
	public String ForgotPassword(Model model,@RequestAttribute(value = "error", required = false) String error)
	{
		model.addAttribute("error", error);
		return "forgotpassword";
	}

	@RequestMapping(method = RequestMethod.POST, value="/forgotPassword")
	//public String registerAction2(ModelMap modelMap, @ModelAttribute("manufacturer") User user, @RequestParam("userTypeId") int userTypeId) {
	public String ForgotPassword(RedirectAttributes redirectAttributes, HttpServletRequest request, @RequestParam("email_id") String email,
			 @RequestParam("username") String username) throws Exception 
	{
		boolean ans = false;
		User user = userDAO.validateEmail(email);
		String random = "";
	    System.out.println(random);
		
		
		if(user != null) {
			if(username.equals(user.getUsername())) {
				random = UserController.getRandomNumberString();
				System.out.println("random number : " + random);
//				redirectAttributes.addFlashAttribute("random", random);
				HttpSession session = request.getSession();
				session.setAttribute("random",random);
				session.setAttribute("user",user);
				
				ans= UserController.sendMail(random, email);
				System.out.println(ans);
				return "verifyuser";
			} else {
				redirectAttributes.addFlashAttribute("error", "User name and Email Address don't match");
				return "redirect:forgot";
			}
			}else {
				redirectAttributes.addFlashAttribute("error", "User name doesn't exist.");
				return "redirect:forgot";
			}
		
		     
	}
	
//	@RequestMapping(method = RequestMethod.GET, value="/verifyuser")
//	public String verifyUser(Model model,RedirectAttributes redirectAttributes, HttpServletRequest request, @RequestAttribute(value = "random", required = true) String random,
//			@RequestAttribute(value = "error", required = false) String error) 
//	{
//		redirectAttributes.addFlashAttribute("random", random);
//		model.addAttribute("error", error);
//		return "verifyuser";
//        
//	}
	
	@RequestMapping(method = RequestMethod.POST, value="/verifyuserAction")
	public String verifyUserAction(RedirectAttributes redirectAttributes, HttpServletRequest request, @RequestParam(value="randomnumber") String randomnumber
			) 
	{
		HttpSession session = request.getSession();
		String random = (String)session.getAttribute("random");
		System.out.println("from controller"+random);
		System.out.println("from webpage"+randomnumber);
		if(random.equals(randomnumber)) {
			return "redirect:resetpassword";
		}else {
			redirectAttributes.addFlashAttribute("error", "You have entered a wrong verify code. Please try again later.");
			return "redirect: verifyuser";
		}
        
	}
	
	@RequestMapping("/resetpassword")
	public String resetpassword(ModelMap modelMap, HttpServletRequest request)
	{
		return "resetpassword";
	}
	
	@RequestMapping(value="/resetpasswordaction", method = RequestMethod.POST)
	public String resetpasswordaction(ModelMap modelMap, HttpServletRequest request,@RequestParam(value="password") String password)
	{
		Boolean userupdated = null;
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		user.setPassword(password);
		userupdated = userDAO.updateUser(user);
		System.out.println(userupdated);
		return "login";
	}
	public static String getRandomNumberString() {
	    // It will generate 6 digit random Number.
	    // from 0 to 999999
	    Random rnd = new Random();
	    int number = rnd.nextInt(999999);
         String rndm = String.format("%06d", number);

         System.out.println(rndm);
	    // this will convert any number sequence into 6 character.
	    return rndm;
	}
	

	
	 public static boolean sendMail(String message,String to) {
		    String from = "scmretailnet@gmail.com";//your mail id here
		    String password = "scmretailnet20";//your password here
			String host="smtp.gmail.com";
			String port="465";
			Properties prop=System.getProperties();
			prop.put("mail.smtp.starttls.enable", "true");
			prop.put("mail.smtp.host", host);
			prop.put("mail.smtp.auth","true");
			prop.put("mail.smtp.user", from);
			prop.put("mail.smtp.password",password);
			prop.put("mail.smtp.port",port);
			prop.put("mail.smtp.socketFactory.port", port);
			prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			prop.put("mail.smtp.socketFactory.fallback", "false");
			Session session=Session.getDefaultInstance(prop, null);
			session.setDebug(true);
			MimeMessage mimeMessage=new MimeMessage(session);
			try{
			mimeMessage.setFrom(new InternetAddress(from));
			//Now Get The Address Of Reciepents
			InternetAddress toAddresses=new InternetAddress();
			
				toAddresses=new InternetAddress(to);
			
			//Now add all toAddress elements 
			//mimeMessage
			
				mimeMessage.addRecipient(RecipientType.TO, toAddresses);
			
			//add Subject TO mimeMessage
			mimeMessage.setSubject("Confirmation OTP for Verification");
			//Set Message TO mimeMessage
			mimeMessage.setText("Your confirmation OTP is "+message+".\n Do Not share with anyone for security purpose.");
			Transport transport=session.getTransport("smtp");
			transport.connect(host,from,password);
			transport.sendMessage(mimeMessage,mimeMessage.getAllRecipients());
			transport.close();
			return true;
			}
			catch(MessagingException me){
				me.printStackTrace();
			}
			
		 return false;
		 }

	 	@RequestMapping(method = RequestMethod.GET, value="/editprofile")
	 	public ModelAndView openeditProfilePage(HttpServletRequest request, ModelMap modelmap) {
			
			HttpSession session = request.getSession();
			int user_id = (int)session.getAttribute("userId");
			
			User user = userDAO.fetchUserById(user_id);
			ModelAndView modelAndView = new ModelAndView("editProfile");
			modelmap.addAttribute("user", user);
			return modelAndView;
		}
	 	
	 	@RequestMapping(method = RequestMethod.GET, value="/editprofilefurther")
	 	public ModelAndView openeditProfileFurtherPage(HttpServletRequest request, ModelMap modelmap ,@RequestParam(value="action") String action) {
			
	 		User user;
			HttpSession session = request.getSession();
			int user_id = (int)session.getAttribute("userId");
			user = userDAO.fetchUserById(user_id);
			System.out.println(action);
			
			if(action.equals("editname"))
			{
				
				ModelAndView modelAndView = new ModelAndView("editprofilefurthername");
				modelmap.addAttribute("user", user);
				return modelAndView;
			}
			else if(action.equals("editemail"))
			{
				
				ModelAndView modelAndView = new ModelAndView("editprofilefurtheremail");
				modelmap.addAttribute("user", user);
				return modelAndView;
			}
			else if(action.equals("editphone"))
			{
				
				ModelAndView modelAndView = new ModelAndView("editprofilefurtherphone");
				modelmap.addAttribute("user", user);
				return modelAndView;
			}
			else if(action.equals("editpassword"))
			{
				
				ModelAndView modelAndView = new ModelAndView("editprofilefurtherpassword");
				modelmap.addAttribute("user", user);
				return modelAndView;
			}
			
			ModelAndView modelAndView = new ModelAndView("editprofile");
			return modelAndView;
				
			
		}
	 	
//	 	@RequestMapping(method = RequestMethod.GET, value="/editprofilefurtheremail")
//	 	public ModelAndView openeditProfileFurtherEmailPage(HttpServletRequest request, ModelMap modelmap) {
//			
//			HttpSession session = request.getSession();
//			int user_id = (int)session.getAttribute("userId");
//			
//			User user = userDAO.fetchUserById(user_id);
//			ModelAndView modelAndView = new ModelAndView("editprofilefurtheremail");
//			modelmap.addAttribute("user", user);
//			return modelAndView;
//		}
//	 	
//	 	@RequestMapping(method = RequestMethod.GET, value="/editprofilefurtherphone")
//	 	public ModelAndView openeditProfileFurtherPhonePage(HttpServletRequest request, ModelMap modelmap) {
//			
//			HttpSession session = request.getSession();
//			int user_id = (int)session.getAttribute("userId");
//			
//			User user = userDAO.fetchUserById(user_id);
//			ModelAndView modelAndView = new ModelAndView("editprofilefurtherphone");
//			modelmap.addAttribute("user", user);
//			return modelAndView;
//		}
//	 	
//	 	@RequestMapping(method = RequestMethod.GET, value="/editprofilefurtherpassword")
//	 	public ModelAndView openeditProfileFurtherPasswordPage(HttpServletRequest request, ModelMap modelmap) {
//			
//			HttpSession session = request.getSession();
//			int user_id = (int)session.getAttribute("userId");
//			
//			User user = userDAO.fetchUserById(user_id);
//			ModelAndView modelAndView = new ModelAndView("editprofilefurtherpassword");
//			modelmap.addAttribute("user", user);
//			return modelAndView;
//		}
	 	
	 	@RequestMapping(method = RequestMethod.POST, value="/editprofilefurthernameaction")
	 	public String openeditProfileFurtherNameActionPage(HttpServletRequest request, @RequestParam(value="username") String username) {
	 		Boolean userupdated = null;
	 		User user;
	 		HttpSession session = request.getSession();
	 		int user_id = (int)session.getAttribute("userId");
			
			System.out.println(username);
			user = userDAO.fetchUserById(user_id);
			user.setUsername(username);
			userupdated = userDAO.updateUser(user);
			System.out.println(userupdated);
			return "redirect:editprofile";
		}
	 	
	 	@RequestMapping(method = RequestMethod.POST, value="/editprofilefurtheremailaction")
	 	public String openeditProfileFurtherEmailActionPage(HttpServletRequest request, @RequestParam(value="email") String email,@RequestParam(value="password") String password) {
	 		Boolean userupdated = null;
	 		User user;
	 		HttpSession session = request.getSession();
	 		int user_id = (int)session.getAttribute("userId");
			
			System.out.println(email);
			
			user = userDAO.fetchUserById(user_id);
			if((user.password).equals(password))
			{
				user.setEmail(email);
				userupdated = userDAO.updateUser(user);
				System.out.println(userupdated);
				return "redirect:editprofile";
			}
			else {
				return "editprofilefurtheremail";
			}
			
			
		}
	 	
	 	@RequestMapping(method = RequestMethod.POST, value="/editprofilefurtherphoneaction")
	 	public String openeditProfileFurtherPhoneActionPage(HttpServletRequest request, @RequestParam(value="contactNo") String contactNo) {
	 		Boolean userupdated = null;
	 		User user;
	 		HttpSession session = request.getSession();
	 		int user_id = (int)session.getAttribute("userId");
			
			System.out.println(contactNo);
			user = userDAO.fetchUserById(user_id);
			user.setContactNo(contactNo);
			userupdated = userDAO.updateUser(user);
			System.out.println(userupdated);
			return "redirect:editprofile";
		}
	 	
	 	@RequestMapping(method = RequestMethod.POST, value="/editprofilefurtherpasswordaction")
	 	public String openeditProfileFurtherPasswordActionPage(HttpServletRequest request, @RequestParam(value="password") String password,@RequestParam(value="oldpassword") String oldpassword) {
	 		Boolean userupdated = null;
	 		User user;
	 		HttpSession session = request.getSession();
	 		int user_id = (int)session.getAttribute("userId");
			
			System.out.println(password);
			user = userDAO.fetchUserById(user_id);
			if((user.password).equals(oldpassword))
			{
				user.setPassword(password);
				userupdated = userDAO.updateUser(user);
				System.out.println(userupdated);
				return "redirect:editprofile";
			}
			else {return "editprofilefurtherpassword";}
			
		}
	 	
	 	@RequestMapping(method = RequestMethod.GET, value="/editfirm")
	 	public ModelAndView openeditfirm(HttpServletRequest request,ModelMap modelmap) {
			
	 		Firm firm;
			HttpSession session = request.getSession();
			int user_id = (int)session.getAttribute("userId");
			firm = userDAO.fetchFirmByUserId(user_id);
			System.out.println("-------"+firm.getFirmId());
			firm.printObj();
			ModelAndView modelAndView = new ModelAndView("editFirm");
			modelmap.addAttribute("firm", firm);
			return modelAndView;
		}
	 	
	 	@RequestMapping(method = RequestMethod.GET, value="/editfirmfurther")
	 	public ModelAndView openeditFirmPage(HttpServletRequest request, ModelMap modelmap ,@RequestParam(value="action") String action) {
			
	 		Firm firm;
			HttpSession session = request.getSession();
			int user_id = (int)session.getAttribute("userId");
			firm = userDAO.fetchFirmByUserId(user_id);
			firm.printObj();
			System.out.println(action);
			
			if(action.equals("editname"))
			{
				
				ModelAndView modelAndView = new ModelAndView("editfirmfurthername");
				modelmap.addAttribute("firm", firm);
				return modelAndView;
			}
			else if(action.equals("editemail"))
			{
				
				ModelAndView modelAndView = new ModelAndView("editfirmfurtheremail");
				modelmap.addAttribute("firm", firm);
				return modelAndView;
			}
			else if(action.equals("editphone"))
			{
				
				ModelAndView modelAndView = new ModelAndView("editfirmfurtherphone");
				modelmap.addAttribute("firm", firm);
				return modelAndView;
			}
			else if(action.equals("editpan"))
			{
				
				ModelAndView modelAndView = new ModelAndView("editfirmfurtherpan");
				modelmap.addAttribute("firm", firm);
				return modelAndView;
			}
			else if(action.equals("editgst"))
			{
				
				ModelAndView modelAndView = new ModelAndView("editfirmfurthergst");
				modelmap.addAttribute("firm", firm);
				return modelAndView;
			}
			else {
			ModelAndView modelAndView = new ModelAndView("editfirm");
			return modelAndView;
			}
			
		}
	 	
	 	@RequestMapping(method = RequestMethod.POST, value="/editfirmfurthernameaction")
	 	public String openeditfirmFurtherNameActionPage(HttpServletRequest request, @RequestParam(value="firmName") String firmName) {
	 		Boolean firmupdated = null;
	 		Firm firm;
	 		HttpSession session = request.getSession();
	 		int user_id = (int)session.getAttribute("userId");
			
			System.out.println(firmName);
			firm = userDAO.fetchFirmByUserId(user_id);
			firm.setFirmName(firmName);
			firmupdated = userDAO.updateFirm(firm);
			System.out.println(firmupdated);
			return "redirect:editfirm";
		}
	 	
	 	@RequestMapping(method = RequestMethod.POST, value="/editfirmfurtheremailaction")
	 	public String openeditfirmFurtherEmailActionPage(HttpServletRequest request, @RequestParam(value="firmEmail") String firmEmail,@RequestParam(value="password") String password) {
	 		User user;
	 		Boolean firmupdated = null;
	 		Firm firm;
	 		HttpSession session = request.getSession();
	 		int user_id = (int)session.getAttribute("userId");
			
			System.out.println(firmEmail);
			
			user = userDAO.fetchUserById(user_id);
			firm = userDAO.fetchFirmByUserId(user_id);
			if((user.password).equals(password))
			{
				firm.setFirmEmail(firmEmail);
				firmupdated = userDAO.updateFirm(firm);
				System.out.println(firmupdated);
				return "redirect:editfirm";
			}
			else {
				return "editfirmfurtheremail";
			}
			
			
		}
	 	
	 	@RequestMapping(method = RequestMethod.POST, value="/editfirmfurtherphoneaction")
	 	public String openeditfirmFurtherPhoneActionPage(HttpServletRequest request, @RequestParam(value="firmContactNo") String firmContactNo) {
	 		Boolean firmupdated = null;
	 		Firm firm;
	 		HttpSession session = request.getSession();
	 		int user_id = (int)session.getAttribute("userId");
			
			System.out.println(firmContactNo);
			firm = userDAO.fetchFirmByUserId(user_id);
			firm.setFirmContactNo(firmContactNo);
			firmupdated = userDAO.updateFirm(firm);
			System.out.println(firmupdated);
			return "redirect:editfirm";
		}
	 	
	 	@RequestMapping(method = RequestMethod.POST, value="/editfirmfurtherpanaction")
	 	public String openeditfirmFurtherPanActionPage(HttpServletRequest request, @RequestParam(value="panNo") String panNo) {
	 		Boolean firmupdated = null;
	 		Firm firm;
	 		HttpSession session = request.getSession();
	 		int user_id = (int)session.getAttribute("userId");
			
			System.out.println(panNo);
			firm = userDAO.fetchFirmByUserId(user_id);
			firm.setPanNo(panNo);
			firmupdated = userDAO.updateFirm(firm);
			System.out.println(firmupdated);
			return "redirect:editfirm";
		}
	 	
	 	@RequestMapping(method = RequestMethod.POST, value="/editfirmfurthergstaction")
	 	public String openeditfirmFurtherGstActionPage(HttpServletRequest request, @RequestParam(value="gstNo") String gstNo) {
	 		Boolean firmupdated = null;
	 		Firm firm;
	 		HttpSession session = request.getSession();
	 		int user_id = (int)session.getAttribute("userId");
			
			System.out.println(gstNo);
			firm = userDAO.fetchFirmByUserId(user_id);
			firm.setGstNo(gstNo);
			firmupdated = userDAO.updateFirm(firm);
			System.out.println(firmupdated);
			return "redirect:editfirm";
		}
	 	
	 	@RequestMapping("/youraccount")
		public String openYourAccount(ModelMap modelMap, HttpServletRequest request)
		{
	 		return "youraccount";
		}
	 	
	 	@RequestMapping(method = RequestMethod.GET, value="/searchfirm")
		public String SearchFirm(ModelMap modelMap,@RequestParam("searchkeywords") String searchkeywords,HttpServletRequest request  ) {
	 		HttpSession session = request.getSession();
			int user_id = (int)session.getAttribute("userId");
			
			Firm firm = userDAO.fetchFirmByUserId(user_id);
			
			ArrayList<Firm> firms = userDAO.searchFirmByKeywords(searchkeywords);
			ArrayList<Firm> searchedfirms = new ArrayList<Firm>();
			ArrayList<Cities> availablecities = new ArrayList<Cities>();
			for (Firm firm2 : firms) {
				if(firm2.getFirmId() != firm.getFirmId()) {
					searchedfirms.add(firm2);
				}
			}
			
			
			
			
			
			
			for (Firm firm3 : searchedfirms) {
				
				if(availablecities.contains(firm3.getCities())) {
					continue;
				}
				int cityId = firm3.getCities().getCityId();
				Cities city = locationDAO.fetchCityById(cityId);
				firm3.setCities(city);
				availablecities.add(firm3.getCities());
			}
			for(Cities city: availablecities)
			{
				System.out.println("cities::::::"+city.getCityName());	
			}
			
			
			modelMap.addAttribute("cities", availablecities);
			modelMap.addAttribute("firm", searchedfirms);
			
			return "supplierlist"; 
	 	}
	 	@RequestMapping(method = RequestMethod.GET, value="/addImage/")
		public ModelAndView openaddIMagePage() {
			ModelAndView modelAndView = new ModelAndView("addProfileImage");
	
			return modelAndView;
		}
	 	@RequestMapping(method = RequestMethod.POST, value="/addImageAction")
		public String addIMageAction(Model model, @ModelAttribute("firmImageMapping") FirmImageMapping firmImageMapping, @RequestParam("firmId") int firmId,
				@RequestParam("imagefile") CommonsMultipartFile file ,HttpSession session,@ModelAttribute Firm firm) {
			
			
			System.out.println("addImageAction called");
			
			String path="D:\\project 1\\images\\firm\\"+firmId+"\\";  
			
			Path mypath = Paths.get(path);
			System.out.println("Folder exists : " + Files.exists(mypath));
			if(!Files.exists(mypath)) {
				try {
					Files.createDirectory(mypath);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			System.out.println("Folder exists : " + Files.exists(mypath));
	        String filename=file.getOriginalFilename();  
	          
	        System.out.println(path+" "+filename);  
	        try{  
	        byte barr[]=file.getBytes();  
	          
	        BufferedOutputStream bout=new BufferedOutputStream(  
	                 new FileOutputStream(path+"\\"+filename));  
	        bout.write(barr);  
	        bout.flush();  
	        bout.close();  
	        
	      
         
	       firm.setFirmId(firmId);
	       firmImageMapping.setFirm(firm);
	       
	       firmImageMapping.setFileName(filename);
	        
	        
	       firmImageMapping = userDAO.insertProfileImage(firmImageMapping);
	        	            
	          
	        }catch(Exception e){
	        	System.out.println(e);
	        }
			return "redirect:addImage/?pid="+firmId;       
		}
		

}
