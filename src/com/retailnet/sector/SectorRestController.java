package com.retailnet.sector;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/Sector/rest")
public class SectorRestController {
	
	@Autowired
	SectorDAO sectorDAO;
	
	@RequestMapping(value="/fetchcategorybysectorid", method=RequestMethod.POST)
	public String fetchCategoryBySectorId(@RequestParam(value="sector_id") int sectorId)
	{
		System.out.println("in fetch Category");
		System.out.println(sectorId);
		
		
		ArrayList<Category> categories = sectorDAO.fetchCategoriesBySectorId(sectorId);
		
		JSONArray response = new JSONArray();
		JSONObject categoryObj;
		
		for(Category category : categories) {
			categoryObj = new JSONObject();
			categoryObj.put("category_id", category.getCategoryId());
			categoryObj.put("category_name", category.getCategoryName());
			response.add(categoryObj);
		}	
		//System.out.println("rest response : "+ response.toJSONString());
		return response.toJSONString();
	}
		
	
		
	@RequestMapping(value="/fetchheadercategories", method=RequestMethod.POST)
	public String fetchHeaderCategories()
	{
		System.out.println("in fetch header categories");
		ArrayList<Sector> allSectors = sectorDAO.fetchAllSectors();
		HashMap<Integer, String> sectors = new HashMap<Integer, String>();
		
		for (Sector sector : allSectors) {
			sectors.put(sector.getSectorId(), sector.getSectorName());
		}
		
		ArrayList<Category> categories = sectorDAO.fetchAllCategories();
		//categories.get(0).getSector().getSectorName();
		
		HashMap<Integer, ArrayList<Category>> h = new HashMap<Integer, ArrayList<Category>>();
		
		for (Category category : categories) {
			
			if(h.containsKey(category.getSector().getSectorId())) {
				ArrayList<Category> categoryList = h.get(category.getSector().getSectorId());
				categoryList.add(category);
				h.put(category.getSector().getSectorId(), categoryList);
			}else {
				ArrayList<Category> categoryList = new ArrayList<Category>();
				categoryList.add(category);
				h.put(category.getSector().getSectorId(), categoryList);
			}
		}
		
		int count = 0;
		JSONArray finalSectors = new JSONArray();
		JSONArray sectorChunks = new JSONArray();
		for (Map.Entry<Integer,ArrayList<Category>> entry : h.entrySet()) { 
            //System.out.println("Key = " + entry.getKey());
            count ++;
            JSONObject sectorObject = new JSONObject();
            sectorObject.put("sector_id", entry.getKey());
            sectorObject.put("sector", sectors.get(entry.getKey()));
            JSONArray categoryObjects = new JSONArray();
            ArrayList<Category> categoryList = entry.getValue();
            for (Category category : categoryList) {
            	JSONObject singleCategory = new JSONObject();
            	singleCategory.put("id", category.categoryId);
            	singleCategory.put("name", category.getCategoryName());
            	categoryObjects.add(singleCategory);
				//System.out.println(entry.getKey()+" --> " + category.getCategoryName());
			}
            sectorObject.put("categories", categoryObjects);
            finalSectors.add(sectorObject);
            if(count % 2 ==0 || count == h.size()) {
//            	System.out.println(finalSectors.size());
            	sectorChunks.add(finalSectors);
            	
            	finalSectors = new JSONArray();
            }
            
            
            
		}
		
		//System.out.println("Final output : "+ sectorChunks.toJSONString());
		//String response = {"message"}
		//return response.toJSONString();
		return sectorChunks.toJSONString();
	}
	
	@RequestMapping(value="/changebylocation", method=RequestMethod.POST)
	public String changebylocation()
	{
		return null;
	}
	
}
