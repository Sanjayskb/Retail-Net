/**
 * 
 */
package com.retailnet.sector;

import java.util.ArrayList;




/**
 * @author ASUS
 *
 */
public interface SectorDAO {

	
	
	public int insertSector(Sector sector);
	public boolean updateSector(Sector sector);
	public Sector fetchSectorById(int sectorId);
	public ArrayList<Sector> fetchAllSectors();
	
	public int insertCategory(Category category);
	public Category fetchCategoryById(int category);
	public ArrayList<Category> fetchAllCategories();
	
	public ArrayList<Category> fetchCategoriesBySectorId(int sectorId);
	
}
