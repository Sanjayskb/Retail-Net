package com.retailnet.user;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.retailnet.location.Cities;

@Entity
@Table(name="master_firm_detail")
public class Firm {
	int firmId;
	String firmName;
	String firmEmail;
	String gstNo;
	String panNo;
	String firmContactNo;
	User user;
	Cities cities;
	int status;
	String profileImageName;
	
	
	public Firm() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Firm(int firmId, String firmName, String firmEmail, String gstNo, String panNo, String firmContactNo,
			User user,Cities cities,int status,String profileImageName) {
		super();
		this.firmId = firmId;
		this.firmName = firmName;
		this.firmEmail = firmEmail;
		this.gstNo = gstNo;
		this.panNo = panNo;
		this.firmContactNo = firmContactNo;
		this.user = user;
		this.cities = cities;
		this.status = status;
		this.profileImageName =profileImageName;
	}

    @Id
    @GeneratedValue
    @Column(name = "firm_id")
	public int getFirmId() {
		return firmId;
	}
	public void setFirmId(int firmId) {
		this.firmId = firmId;
	}
	
	
	@Transient
	public String getProfileImageName() {
		return profileImageName;
	}
	public void setProfileImageName(String profileImageName) {
		this.profileImageName = profileImageName;
	}


	@Column(name = "firm_name")
	public String getFirmName() {
		return firmName;
	}
	public void setFirmName(String firmName) {
		this.firmName = firmName;
	}
	@Column(name = "email_id")
	public String getFirmEmail() {
		return firmEmail;
	}
	public void setFirmEmail(String firmEmail) {
		this.firmEmail = firmEmail;
	}
	@Column(name = "gst_no")
	public String getGstNo() {
		return gstNo;
	}
	public void setGstNo(String gstNo) {
		this.gstNo = gstNo;
	}
	@Column(name = "pan_no")
	public String getPanNo() {
		return panNo;
	}
	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}
	@Column(name = "contact_number")
	public String getFirmContactNo() {
		return firmContactNo;
	}
	public void setFirmContactNo(String firmContactNo) {
		this.firmContactNo = firmContactNo;
	}
	
	@ManyToOne
	@JoinColumn(name = "user_id")
    public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
	@ManyToOne
	@JoinColumn(name = "firm_location")
	public Cities getCities() {
		return cities;
	}


	public void setCities(Cities cities) {
		this.cities = cities;
	}

	@Column(name = "")
	public int getStatus() {
		return status;
	}


	public void setStatus(int status) {
		this.status = status;
	}


	public void printObj() {
		System.out.println("Prinintng User Object...");
		System.out.println("First Name : "+ this.firmName);
		System.out.println("Email Id : "+ this.firmEmail);
		System.out.println("Contact : "+ this.gstNo);
		System.out.println("Password : "+ this.panNo);
		System.out.println("Contact no "+ this.firmContactNo);
		System.out.println("user Type : " + this.user.getUserId());
		System.out.println("user Status : " + this.status);
}
}
