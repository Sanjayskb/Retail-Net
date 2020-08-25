package com.retailnet.admin;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.retailnet.user.User;

@Entity
@Table(name="master_help")
public class Help {

	int tableId;
	User user;
	String name;
	String email;
	String subject;
	String message;
	String date;
	
	public Help() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public Help(int tableId, User user, String name, String email, String subject, String message, String date) {
		super();
		this.tableId = tableId;
		this.user = user;
		this.name = name;
		this.email = email;
		this.subject = subject;
		this.message = message;
		this.date = date;
	}

	@Id
	@GeneratedValue
	@Column(name="table_id")
	public int getTableId() {
		return tableId;
	}

	public void setTableId(int tableId) {
		this.tableId = tableId;
	}

	@ManyToOne
	@JoinColumn(name="user_id")
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column(name="name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name="email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name="subject")
	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	@Column(name="message")
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	@Column(name="date")
	public String getDate() {
		return date;
	}

	
	public void setDate(String date) {
		this.date = date;
	}
	
	
}
