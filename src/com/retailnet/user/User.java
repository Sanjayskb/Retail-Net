/**

 * 
 */

package com.retailnet.user;

/**
 * @author ASUS
 *
 */
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "master_user")
public class User {
	int userId;
	String firstname;
	String lastname;
	String email;
	String contactNo;
	UserType userType;
	String username;
	String password;
	int status;
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(int userId, String firstname, String lastname, String email, String contactNo, UserType userType,
			String username, String password, int status) {
		super();
		this.userId = userId;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.contactNo = contactNo;
		this.userType = userType;
		this.username = username;
		this.password = password;
		this.status = status;
	}
	
	@Id
	@GeneratedValue
	@Column(name = "user_id")
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	@Column(name="first_name")
	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	
	@Column(name="last_name")
	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	@Column(name="email_id")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name="contact_no")
	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	
	@ManyToOne
	@JoinColumn(name="user_type_id")
	public UserType getUserType() {
		return userType;
	}

	public void setUserType(UserType userType) {
		this.userType = userType;
	}
	
	@Column(name="username")
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Column(name="password")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	@Column(name="status")
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public void printObj() {
		System.out.println("Prinintng User Object...");
		System.out.println("First Name : "+ this.firstname);
		System.out.println("Last Name : "+ this.lastname);
		System.out.println("Email Id : "+ this.email);
		System.out.println("Contact : "+ this.contactNo);
		System.out.println("Password : "+ this.password);
		System.out.println("user Type : " + this.userType.getUserTypeText());
		System.out.println("user status : " + this.status);
	}
	
	
}
