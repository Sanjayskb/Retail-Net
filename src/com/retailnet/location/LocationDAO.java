package com.retailnet.location;

import java.util.ArrayList;

import com.retailnet.products.Products;
import com.retailnet.sector.Category;



public interface LocationDAO {

	public ArrayList<States> fetchAllStates();
	public ArrayList<Cities> fetchAllCities();
	
	public ArrayList<Cities> fetchCitiesByStateId(int stateId);
	public Cities fetchCityById(int cityId);
}
