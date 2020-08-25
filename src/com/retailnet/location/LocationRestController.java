package com.retailnet.location;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequestMapping("/Location/rest")
public class LocationRestController {
	
	@Autowired
	LocationDAO locationDAO;
	
	@RequestMapping(value="/fetchcitybystateid", method=RequestMethod.POST)
	public String fetchCategoryBySectorId(@RequestParam(value="state_id") int stateId)
	{
		System.out.println("in fetch City");
		System.out.println(stateId);
		
		
		ArrayList<Cities> cities = locationDAO.fetchCitiesByStateId(stateId);
		
		JSONArray response = new JSONArray();
		JSONObject cityObj;
		
		for(Cities city : cities) {
			cityObj = new JSONObject();
			cityObj.put("city_id", city.getCityId());
			cityObj.put("city_name", city.getCityName());
			response.add(cityObj);
		}	
		//System.out.println("rest response : "+ response.toJSONString());
		return response.toJSONString();
	}

}
