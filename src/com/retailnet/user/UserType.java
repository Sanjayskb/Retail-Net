/**
 * 
 */
package com.retailnet.user;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * @author ASUS
 *
 */
import javax.persistence.Column;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Table(name = "master_user_type")
public class UserType {
	int userTypeId;
	String userTypeText;
	
	public UserType() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public UserType(int userTypeId, String userTypeText) {
		super();
		this.userTypeId = userTypeId;
		this.userTypeText = userTypeText;
	}
	
	@Id
	@GeneratedValue
	@Column(name = "user_type_id")
	
	public int getUserTypeId() {
		return userTypeId;
	}

	public void setUserTypeId(int userTypeId) {
		this.userTypeId = userTypeId;
	}
	
	@Column(name = "user_type_text")
	public String getUserTypeText() {
		return userTypeText;
	}

	public void setUserTypeText(String userTypeText) {
		this.userTypeText = userTypeText;
	}
	
	
}
