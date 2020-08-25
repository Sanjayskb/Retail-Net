package com.retailnet.utility;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="search_keywords")
public class Search {

	int searchId;
	String keyword;
	int count;
	
	public Search() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Search(int searchId, String keyword, int count) {
		super();
		this.searchId = searchId;
		this.keyword = keyword;
		this.count = count;
	}
	
	@Id
	@GeneratedValue
	@Column(name="search_id")
	public int getSearchId() {
		return searchId;
	}

	public void setSearchId(int searchId) {
		this.searchId = searchId;
	}

	@Column(name="keyword")
	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Column(name="count")
	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
	
	
	
}
