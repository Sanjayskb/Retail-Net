package com.retailnet.sector;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.retailnet.location.Cities;
import com.retailnet.location.LocationDAO;
import com.retailnet.products.Products;
import com.retailnet.products.ProductsDAO;
import com.retailnet.user.Firm;
import com.retailnet.user.UserDAO;

@Controller
@RequestMapping("/sector")
public class SectorController {

	@Autowired
	SectorDAO sectorDAO;
	
	@Autowired
	ProductsDAO productsDAO;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	LocationDAO locationDAO;
	
	@RequestMapping("/sectorpage/{sectorId}")
	public String openSector(ModelMap modelMap, HttpServletRequest request,@PathVariable("sectorId") int sectorId)
	{
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		
		Sector sector = sectorDAO.fetchSectorById(sectorId);
		ArrayList<Category> categories = (ArrayList<Category>)sectorDAO.fetchCategoriesBySectorId(sectorId);
		modelMap.addAttribute("categories", categories);
		modelMap.addAttribute("sector", sector);
		return "singleSector";
	}
	
	@RequestMapping("/categorypage/{categoryId}")
	public String opencategory(ModelMap modelMap, HttpServletRequest request,@PathVariable("categoryId") int categoryId)
	{
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		Firm firm = userDAO.fetchFirmByUserId(user_id);
		int firmId = firm.getFirmId();
		Category category = sectorDAO.fetchCategoryById(categoryId);
		ArrayList<Products> products = productsDAO.fetchAllOtherProductsByCategoryId(firmId, categoryId);
		ArrayList<Products> otherproducts = new ArrayList<Products>();
		for(Products products2 : products)
		{
			if(products2.getFirm().getStatus() != 0)
			{
				if(products2.getStatus() != 0)
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
		modelMap.addAttribute("category", category);
		}
		
		
		return "category";
	}
	
	@RequestMapping("/supplierpage")
	public String openSuppliers(ModelMap modelMap, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		
//		ArrayList<Cities> cities = locationDAO.fetchAllCities();
		ArrayList<Cities> availablecities = new ArrayList<Cities>();
		ArrayList<Firm> firm = userDAO.fetchAllOtherFirms(user_id);
		
		
		for (Firm firm2 : firm) {
			
			
			if(availablecities.contains(firm2.getCities())) {
				continue;
			}
			availablecities.add(firm2.getCities());
		}
		System.out.println("cities::::::"+availablecities.size());
		
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
		
		modelMap.addAttribute("cities", availablecities);
		modelMap.addAttribute("firm", firm);
		return "supplierlist";
	}
	
	@RequestMapping("/supplier/{firmId}")
	public String openSingleSupplier(ModelMap modelMap, HttpServletRequest request,@PathVariable("firmId") int firmId)
	{
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		
		Firm firm = userDAO.fetchFirmById(firmId);
		ArrayList<Products> products = productsDAO.fetchMyProducts(firmId);
		modelMap.addAttribute("products", products);
		modelMap.addAttribute("firm", firm);
		return "singlesupplier";
	}
	
	@RequestMapping("/myfirm")
	public String openmyfirm(ModelMap modelMap, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		
		Firm firm = userDAO.fetchFirmByUserId(user_id);
		
		ArrayList<Products> products = productsDAO.fetchMyProducts(firm.getFirmId());
		ArrayList<Products> otherproducts = new ArrayList<Products>();
		for(Products products2 : products)
		{
			if(products2.getFirm().getStatus() != 0)
			{
				if(products2.getStatus() != 0)
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
		}	
		
		
		modelMap.addAttribute("firm", firm);
		return "singlesupplier";
	}
	
	@RequestMapping("/allcategoriespage")
	public String openAllCategories(ModelMap modelMap, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		
		ArrayList<Sector> sectors = sectorDAO.fetchAllSectors();
		ArrayList<Category> categories = sectorDAO.fetchAllCategories();
		
		modelMap.addAttribute("sectors", sectors);
		modelMap.addAttribute("categories", categories);
		return "allCategories";
	}
	
	@RequestMapping("/allfirmsbylocation")
	public String openallfirmsbylocation(ModelMap modelMap, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		
		ArrayList<Cities> availablecities = new ArrayList<Cities>();
		ArrayList<Firm> firm = userDAO.fetchAllOtherFirms(user_id);
		
		
		for (Firm firm2 : firm) {
			
			
			if(availablecities.contains(firm2.getCities())) {
				continue;
			}
			availablecities.add(firm2.getCities());
		}
		System.out.println("cities::::::"+availablecities.size());
		
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
		
		modelMap.addAttribute("cities", availablecities);
		modelMap.addAttribute("firm", firm);
		
		return "locationwisesupplierlist";
	}
	
	
	@RequestMapping("/filterbycity/{cityId}")
	public String openfilterbycity(ModelMap modelMap, HttpServletRequest request,@PathVariable("cityId") int cityId)
	{
		
		return "supplierlist";
	}
	
	@RequestMapping("/sortcategorypagehtl")
	public String opensortcategorypagehtl(ModelMap modelMap, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		ArrayList<Products> searchproducts = new ArrayList<Products>();
		ArrayList<Products> sortedproducts = productsDAO.sortProductsByPriceHtL();
		for (Products products : sortedproducts) {
			if(products.getSorting()==1)
			{
				searchproducts.add(products);
				//products.setSorting(0);
				//productsDAO.updateProduct(products);
			}
			System.out.println(products.getPrice());
		}
		
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
	
	@RequestMapping("/sortcategorypagelth")
	public String opensortcategorypagelth(ModelMap modelMap, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("userId");
		ArrayList<Products> searchproducts = new ArrayList<Products>();
		ArrayList<Products> sortedproducts = productsDAO.sortProductsByPriceLtH();
		for (Products products : sortedproducts) {
			if(products.getSorting()==1)
			{
				searchproducts.add(products);
				//products.setSorting(0);
				//productsDAO.updateProduct(products);
			}
			System.out.println(products.getPrice());
		}
		
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
}
