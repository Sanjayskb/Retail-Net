/**
 * 
 */
package com.retailnet.gst;

import java.util.ArrayList;



/**
 * @author ASUS
 *
 */
public interface GstDAO {

	public int insertGst(Gst gst);
	public Gst fetchGstById(int gstId);
	public ArrayList<Gst> fetchAllGsts();
	
	public ArrayList<Unit> fetchAllUnits();
}
