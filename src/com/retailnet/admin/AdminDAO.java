/**
 * 
 */
package com.retailnet.admin;

import java.util.ArrayList;

import com.retailnet.gst.Gst;
import com.retailnet.user.User;



/**
 * @author ASUS
 *
 */
public interface AdminDAO {

	public Help insertHelp(Help help);
	public Help fetchHelpById(int tabeId);
	public ArrayList<Help> fetchAllHelps();
	public boolean updateHelp(Help help);
	public boolean deleteHelp(int tableId);

}
