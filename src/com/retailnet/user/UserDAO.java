/**
 * 
 */
package com.retailnet.user;

import java.util.ArrayList;
import java.util.HashMap;



/**
 * @author ASUS
 *
 */
public interface UserDAO {

		public User insertUser(User user);
		public boolean updateUser(User user);
		public User fetchUserById(int userId);
		public ArrayList<User> fetchAllUsers();
		public ArrayList<User> fetchAllActiveUsers(int status);
		public User fetchUserByUsername(String username);
		
		public int insertUserType(UserType userType);
		public boolean updateUserType(UserType userType); 
		public UserType fetchUserTypeById(int userTypeId);
		public ArrayList<UserType> fetchAllUserTypes();
		
		public Firm insertFirm(Firm firm);
		public boolean updateFirm(Firm firm); 
		public Firm fetchFirmById(int firmId);
		public Firm fetchFirmByUserId(int userId);
		public ArrayList<Firm> fetchAllFirm();
		public ArrayList<Firm> fetchAllOtherFirms(int userId);
		
		public User validateCredentials(String username, String password);
		public User validateCredentialsWithEmail(String email, String password);
		public User validateEmail(String email);
		
		public ArrayList<Firm> searchFirmByKeywords(String keywords);
		
		public FirmImageMapping fetchProfileImageById(int mappingId);
		public FirmImageMapping insertProfileImage(FirmImageMapping firmImageMapping);
		public HashMap<Integer, String> fetchProfileImagesByFirmId(String firmId);
		
		
}
