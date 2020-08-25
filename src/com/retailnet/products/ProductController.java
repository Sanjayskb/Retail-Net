

/**
 * 
 */
package com.retailnet.products;



import com.google.gson.JsonArray;
import com.retailnet.cart.Cart;
import com.retailnet.cart.CartDAO;
import com.retailnet.gst.*;
import com.retailnet.inquiries.Inquiries;
import com.retailnet.inquiries.InquiriesDAO;
import com.retailnet.sector.*;

import java.awt.Image;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;
import java.io.File; 
import org.apache.commons.io.FileUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
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
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.retailnet.user.Firm;
import com.retailnet.user.User;
import com.retailnet.user.UserDAO;
import com.retailnet.user.UserType;
import com.retailnet.utility.Constants;

/**
 * @author ASUS
 *
 */

@Controller
@RequestMapping("/products")
public class ProductController {
	
		@Autowired
		UserDAO userDAO;
	
		@Autowired
		ProductsDAO productsDAO;
		
		@Autowired
		SectorDAO sectorDAO;
		
		@Autowired
		GstDAO gstDAO;
		
		@Autowired
		CartDAO cartDAO;
		
		@Autowired
		InquiriesDAO inquiriesDAO;
		
//		@RequestMapping("/addproduct")
//		public String openProduct(ModelMap modelMap)
//		{
//			return "addProduct";
//		}
		
		@RequestMapping(method = RequestMethod.GET, value="/addProduct")
		public ModelAndView openaddProductPage() {
			ArrayList<Category> categories = sectorDAO.fetchAllCategories();
			ArrayList<Gst> gsts = gstDAO.fetchAllGsts();
			ArrayList<Unit> units = gstDAO.fetchAllUnits();
			ArrayList<Sector> sectors = sectorDAO.fetchAllSectors();
			System.out.println("Category length :" + categories.size());
			ModelAndView modelAndView = new ModelAndView("addProduct");
			modelAndView.addObject("categories", null);
			modelAndView.addObject("gsts", gsts);
			modelAndView.addObject("units", units);
			modelAndView.addObject("sectors", sectors);
		
			return modelAndView;
		}
		
		@RequestMapping(method = RequestMethod.GET, value="/editproduct/{productId}")
		public ModelAndView openeditProductPage(ModelMap modelMap,@PathVariable("productId") int productId,HttpServletRequest request) {
			
			HttpSession session = request.getSession();
			int user_id = (int)session.getAttribute("userId");
			
			
			ArrayList<Category> categories = sectorDAO.fetchAllCategories();
			ArrayList<Gst> gsts = gstDAO.fetchAllGsts();
			ArrayList<Unit> units = gstDAO.fetchAllUnits();
			ArrayList<Sector> sectors = sectorDAO.fetchAllSectors();
		
			ArrayList<ProductImage> productimages = productsDAO.fetchImageByProductId(productId);
			System.out.println("Category length :" + categories.size());
			System.out.println("Images length :" + productimages.size());
			ModelAndView modelAndView = new ModelAndView("addProduct");
			modelAndView.addObject("categories", categories);
			modelAndView.addObject("gsts", gsts);
			modelAndView.addObject("units", units);
			modelAndView.addObject("sectors", sectors);

			modelAndView.addObject("productimages", productimages);
			//brands.get(0).getCategory().getSector().getSectorId()
			
			Products product = productsDAO.fetchProductById(productId);
			System.out.println(product);
			modelMap.addAttribute("products", product);
			//product.getBrand().getCategory().getSector().getSectorId()
			
//			JSONArray response = new JSONArray();
//			JSONObject categoryObj;
//			
//			for(Category category : categories) {
//				categoryObj = new JSONObject();
//				categoryObj.put("category_id", category.getCategoryId());
//				categoryObj.put("category_name", category.getCategoryName());
//				response.add(categoryObj);
//			}	
//			System.out.println("rest response : "+ response.toJSONString());
			

			return modelAndView;
		}
		
		@RequestMapping(method = RequestMethod.POST, value="/productAction")
		public String productAction(ModelMap modelMap, @ModelAttribute("product") Products product,@ModelAttribute Category category,
				 @ModelAttribute Gst gst,@ModelAttribute Unit unit,
				@RequestParam("categoryId") int categoryId,
				final RedirectAttributes redirectAttributes,
				HttpServletRequest request) {
			
//		Brand brand = new Brand();
//		brand.setBrandId(brandId);
			//Category category = new Category();
			//category.setCategoryId(categoryId);

			System.out.println( "C ::::"+category.getCategoryId());
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		User user = new User();
		user.setUserId(user_id);
		Firm firm = userDAO.fetchFirmByUserId(user_id);
		product.setCategory(category);
		System.out.println("gst id : " + gst.getGstId());
		product.setGst(gst);
		System.out.println("unit : " + unit.getName());
		product.setUnit(unit);
		System.out.println("user_id from session:"+ user_id);
		product.setFirm(firm);
		product.printObj();
		product = productsDAO.insertProduct(product);
		
		
		return "redirect:/user/index";
		} 
		
		@RequestMapping(method = RequestMethod.GET, value="/productActionUpdate")
		public String productActionUpdate( @ModelAttribute("product") Products product,
				@ModelAttribute Category category, @ModelAttribute Gst gst,@ModelAttribute Unit unit,
				@RequestParam("categoryId") int categoryId,
				final RedirectAttributes redirectAttributes,
				HttpServletRequest request) {
			
//		Brand brand = new Brand();
//		brand.setBrandId(brandId);
		System.out.println("Hi bhai aa gya");	
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		User user = new User();
		user.setUserId(user_id);
		Firm firm = userDAO.fetchFirmByUserId(user_id);
		product.setCategory(category);
		System.out.println("gst id of update product------ : " + gst.getGstId());
		product.setGst(gst);
		product.setUnit(unit);
		System.out.println("user_id from session:"+ user_id);
		product.setFirm(firm);
		product.printObj();
		boolean x;
		x = productsDAO.updateProduct(product);
			System.out.println("product updated --- "+x);
		return "redirect:/user/index";
		} 
		
		@RequestMapping(method = RequestMethod.GET, value="/browse")
		public String browseProducts(ModelMap modelMap,
				final RedirectAttributes redirectAttributes,
				HttpServletRequest request) {
			
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		
		ArrayList<Products> products = productsDAO.fetchAllProducts();
		
		for (Products products2 : products) {
			products2.printObj();
		}
		modelMap.addAttribute("products", products);
			
		return "category";
		} 
		
		@RequestMapping(method = RequestMethod.GET, value="/browseother")
		public String browseotherProducts(ModelMap modelMap,
				final RedirectAttributes redirectAttributes,
				HttpServletRequest request) {
			
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		Firm firm = userDAO.fetchFirmByUserId(user_id);
		int firmId = firm.getFirmId();
		
		ArrayList<Products> products = productsDAO.fetchAllOtherProducts(firmId);
		ArrayList<Products> otherproducts = new ArrayList<Products>();
		ArrayList<Sector> sectors = sectorDAO.fetchAllSectors();
		for(Products products2 : products)
		{
			if(products2.getFirm().getStatus() != 0)
			{
				if(products2.status != 0)
				{
					otherproducts.add(products2);
				}
			}
			
		}
		if(otherproducts.size() >0)
		{
		String productIdList = "";
		
		for (Products prdct : otherproducts) {
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
		
		for (Products products2 : otherproducts) {
			products2.printObj();
			products2.setFirstImageName(productImages.get(products2.getProductId()));
		}
		
		for (Products products2 : otherproducts) {
			System.out.println("First Image : "+ products2.getFirstImageName());
		}
		modelMap.addAttribute("products", otherproducts);
		modelMap.addAttribute("sectors", sectors);
		}	
		return "BrowseAll";
		} 
		
		
		@RequestMapping(method = RequestMethod.GET, value="/myproducts")
		public String myProducts(ModelMap modelMap,
				final RedirectAttributes redirectAttributes,
				HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		Firm firm = userDAO.fetchFirmByUserId(user_id);
		int firmId = firm.getFirmId();
		System.out.println("In my Products Controller.............................");
		boolean inInquiries; 
		HashMap<Integer,String> inInquiriesmap = new HashMap<Integer,String>();
		ArrayList<Products> products = productsDAO.fetchMyProducts(firmId);
		ArrayList<Products> myproducts = new ArrayList<Products>();
		for(Products products2 : products)
		{
			if(products2.status == 1)
			{
				myproducts.add(products2);
			}
		}
		ArrayList<Integer> ispresent = new ArrayList<Integer>();
		
		int sellerId = firm.getFirmId();
		for (Products products2 : myproducts) {
			int productId = products2.getProductId();
			inInquiries = productsDAO.checkInInquiries(sellerId, productId);
			if(inInquiries == true)
			{
				inInquiriesmap.put(productId, "yes");
				ispresent.add(productId);
			}
//			else
//			{
//				inInquiriesmap.put(productId, "no");
//			}
			products2.printObj();
		}
		for (Integer name: inInquiriesmap.keySet()){
            String key = name.toString();
            String value = inInquiriesmap.get(name).toString();  
            System.out.println(key + " " + value);  
		} 
		modelMap.addAttribute("ininquiries",inInquiriesmap);
		modelMap.addAttribute("products", myproducts);
		modelMap.addAttribute("ispresent", ispresent);
			
		return "myProducts";
		} 
		
		@RequestMapping(method = RequestMethod.GET, value="/singleproduct/{productId}")
		public String singleProducts(ModelMap modelMap,
				final RedirectAttributes redirectAttributes,@PathVariable("productId") int productId,
				HttpServletRequest request) {
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		boolean inCart; 
		Products product = productsDAO.fetchProductById(productId);
		inCart = cartDAO.checkInCart(user_id, productId);
		System.out.println(inCart);
		List <ProductImage> productImages = (List<ProductImage>) productsDAO.fetchImageByProductId(productId);
		modelMap.addAttribute("products", product);
		modelMap.addAttribute("productImages",productImages);
		modelMap.addAttribute("incart",inCart);
		JSONParser jsonParser=new JSONParser();
		Object object = null;
		try {
			object = jsonParser.parse(product.getSpecifications());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JSONArray specifications=(JSONArray) object;
		
		modelMap.addAttribute("specifications", specifications);
		return "single-product";
		} 
		
		
		
		@RequestMapping(method = RequestMethod.GET, value="/mysingleproduct/{productId}")
		public String mysingleProducts(ModelMap modelMap,
				final RedirectAttributes redirectAttributes,@PathVariable("productId") int productId,
				HttpServletRequest request) {
			System.out.println("In this controller");

		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		
		Products product = productsDAO.fetchProductById(productId);
		System.out.println(product);

		List <ProductImage> productImages = (List<ProductImage>) productsDAO.fetchImageByProductId(productId);
		modelMap.addAttribute("products", product);
		modelMap.addAttribute("productImages",productImages);
		
		//JSONArray specifications = new JSONArray(product.getSpecifications());
		if(product.getSpecifications()!=null)
		{
		JSONParser jsonParser=new JSONParser();
		Object object = null;
		try {
			object = jsonParser.parse(product.getSpecifications());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JSONArray specifications=(JSONArray) object;
//		System.out.println(specifications.getClass().getName());
		modelMap.addAttribute("specifications", specifications);
//		 for (int i = 0; i < specifications.length(); i++)
//	        {
//	            JSONObject jsonObj = specifications.getJSONObject(i);
//
//	            System.out.println(jsonObj);
//	        }
		//JSONArray specifications = new JSONArray(product.getSpecifications());
		}
		System.out.println(productImages);
		
			
		return "mysingleproduct";
		} 
		
		@RequestMapping(method = RequestMethod.GET, value="/addImage/")
		public ModelAndView openaddIMagePage() {
			ModelAndView modelAndView = new ModelAndView("addImage");
	
			return modelAndView;
		}
		
		@RequestMapping(method = RequestMethod.POST, value="/addImageAction")
		public String addIMageAction(Model model, @ModelAttribute("productImage") ProductImage productImage, @RequestParam("productId") int productId,
				@RequestParam("imagefile") CommonsMultipartFile file ,HttpSession session,@ModelAttribute Products product) {
			
			
			System.out.println("addImageAction called");
			//String path=session.getServletContext().getRealPath("C:/Users/ASUS/OneDrive/Desktop/Project 1/images/products/");  
			String path="D:\\project 1\\images\\products\\"+productId+"\\";  
			//String path=Constants.FILE_PATH+productId+"\\";  
			//String path=Constants.getProperty("imagepath")+productId+"\\"; 
			//System.out.println("path : "+ path);
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
	        
	        
	       Products products = new Products();
	       products.setProductId(productId);
	       productImage.setProduct(products);
	       
	        productImage.setimageName(filename);
	        productImage.setProduct(product);
	        
	        productImage = productsDAO.insertProductImage(productImage);
	        
//	       List <ProductImage> productImage = (List<ProductImage>) productsDAO.fetchImageByProductId(productId);
//			modelMap.addAttribute("products", product);
//			modelMap.addAttribute("image",productImage);	        
	          
	        }catch(Exception e){
	        	System.out.println(e);
	        }
			return "redirect:addImage/?pid="+productId;
//	        return "redirect:mysingleproduct/?pid="+productId;
		}
		
		@RequestMapping(method = RequestMethod.GET, value="/changeImage")
		public ModelAndView openchangeImagePage() {
			ModelAndView modelAndView = new ModelAndView("changeImage");
	
			return modelAndView;
		}
		
		@RequestMapping(method = RequestMethod.POST, value="/changeImageAction")
		public String changeIMageAction(Model model, @ModelAttribute("productImage") ProductImage productImage, @RequestParam("productId") int productId,
				@RequestParam("imagefile") CommonsMultipartFile file ,HttpSession session,@ModelAttribute Products product) {
			return null;
		}
		
		@RequestMapping(method = RequestMethod.GET, value="/removeproduct/{productId}")
		public String removeFromCart(ModelMap modelMap,@PathVariable("productId") int productId,@ModelAttribute("productImage") ProductImage productImage,
				RedirectAttributes redirectAttributes)
		{

			System.out.println("In remove product..............................................................");
			
//			boolean x;
//			 
//			ArrayList<ProductImage> productImages = productsDAO.fetchImageByProductId(productId);
//			System.out.println(productImages.size());
//			ArrayList<Cart> cart = cartDAO.fetchMyCartByProductId(productId);
//			System.out.println(cart.size());
//			if(productImages.size()>0)
//			{
//				String path="E:\\project 1\\images\\products\\"+productId+"\\";
//				Path mypath = Paths.get(path);
//				if(!Files.exists(mypath)) {
//					String folder = "this folder with productId:" +productId+ "does not exist";
//					System.out.println(folder);
//				}
//				else {
//					File index = new File(path);
//					String[]entries = index.list();
//					for(String s: entries){
//					    File currentFile = new File(index.getPath(),s);
//					    currentFile.delete();
//					}
//					index.delete();
//			}
//				productsDAO.removeAllProductImageByProductId(productId);
//			}
//			if(cart.size()>0)
//			{
//				for(Cart cart2 : cart)
//				{
//					cart2.setStatus(0);
//					cartDAO.updateCart(cart2);
//				}		
//				for(Cart cart2 : cart)
//				{
//					int cart_id=cart2.getCartId();
//					cartDAO.removefromCart(cart_id);
//					String remove  = "This product is No longer Available";
//					
//				}
//			}
			
//			x=productsDAO.removeProduct(productId);
			Products products = productsDAO.fetchProductById(productId);
			products.setStatus(0);
			products.setAvailability(0);
			productsDAO.updateProduct(products);
			System.out.println(productId+" removed from products ");
			
		
			return "redirect:/products/myproducts";
	}
		
		@RequestMapping(method = RequestMethod.GET, value="/search")
		public String Search(ModelMap modelMap,@RequestParam("searchkeywords") String searchkeywords,HttpServletRequest request  ) {
			
			HttpSession session = request.getSession();
			int user_id = (int)session.getAttribute("userId");
			
			Firm firm = userDAO.fetchFirmByUserId(user_id);
			
			ArrayList<Products> fetchedproducts =  productsDAO.searchProductByKeywords(searchkeywords);
			ArrayList<Products> searchproducts = new ArrayList<Products>();
			
			
			
			//catch
			// return "Error?message="+"Something went wrong in DB connect";
			
			for (Products product2 : fetchedproducts) {
				if(product2.getFirm().getFirmId() != firm.getFirmId()) {
				
					product2.setSorting(1);
					productsDAO.updateProduct(product2);
					searchproducts.add(product2);
				}
				else {
					continue;
				}
				}
			
			
			System.out.println("Search Results = "+searchproducts.size());
		    
			

		    if(searchproducts.size() >0)
			{
			String productIdList = "";
			
			for (Products prdct : searchproducts) {
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
			
			for (Products products2 : searchproducts) {
				products2.printObj();
				products2.setFirstImageName(productImages.get(products2.getProductId()));
			}
			
			for (Products products2 : searchproducts) {
				System.out.println("First Image : "+ products2.getFirstImageName());
			}
			modelMap.addAttribute("products", searchproducts);
			}
		    
			return "category";
			
			
			
	
		}
		
		
		
	
		@RequestMapping(method = RequestMethod.GET, value="/otherProductsSortByName")
		public String otherProductsSortByName(ModelMap modelMap,
				final RedirectAttributes redirectAttributes,
				HttpServletRequest request) {
			
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		Firm firm = userDAO.fetchFirmByUserId(user_id);
		int firmId = firm.getFirmId();
		
		ArrayList<Products> products = productsDAO.sortProductsByName(firmId);
		ArrayList<Products> otherproducts = new ArrayList<Products>();
		ArrayList<Sector> sectors = sectorDAO.fetchAllSectors();
		for(Products products2 : products)
		{
			if(products2.getFirm().getStatus() != 0)
			{
				if(products2.status != 0)
				{
					otherproducts.add(products2);
				}
			}
			
		}
		if(otherproducts.size() >0)
		{
		String productIdList = "";
		
		for (Products prdct : otherproducts) {
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
		
		for (Products products2 : otherproducts) {
			products2.printObj();
			products2.setFirstImageName(productImages.get(products2.getProductId()));
		}
		
		for (Products products2 : otherproducts) {
			System.out.println("First Image : "+ products2.getFirstImageName());
		}
		modelMap.addAttribute("products", otherproducts);
		modelMap.addAttribute("sectors", sectors);
		}	
		return "BrowseAll";
		} 
		
		
		@RequestMapping(method = RequestMethod.GET, value="/otherProductsSortByPrice")
		public String otherProductsSortByPrice(ModelMap modelMap,
				final RedirectAttributes redirectAttributes,
				HttpServletRequest request) {
			
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		Firm firm = userDAO.fetchFirmByUserId(user_id);
		int firmId = firm.getFirmId();
		
		ArrayList<Products> products = productsDAO.sortProductsByPrice(firmId);
		ArrayList<Products> otherproducts = new ArrayList<Products>();
		ArrayList<Sector> sectors = sectorDAO.fetchAllSectors();
		for(Products products2 : products)
		{
			if(products2.getFirm().getStatus() != 0)
			{
				if(products2.status != 0)
				{
					otherproducts.add(products2);
				}
			}
			
		}
		if(otherproducts.size() >0)
		{
		String productIdList = "";
		
		for (Products prdct : otherproducts) {
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
		
		for (Products products2 : otherproducts) {
			products2.printObj();
			products2.setFirstImageName(productImages.get(products2.getProductId()));
		}
		
		for (Products products2 : otherproducts) {
			System.out.println("First Image : "+ products2.getFirstImageName());
		}
		modelMap.addAttribute("products", otherproducts);
		modelMap.addAttribute("sectors", sectors);
		}	
		return "BrowseAll";
		} 
		}
		

