package com.retailnet.sector;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="product_category")
public class Category {
	
	int categoryId;
	Sector sector;
	String categoryName;
	
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Category(int categoryId, Sector sector, String categoryName) {
		super();
		this.categoryId = categoryId;
		this.sector = sector;
		this.categoryName = categoryName;
	}
	
	@Id
	@GeneratedValue
	@Column(name="category_id")
	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	
	@ManyToOne
	@JoinColumn(name="sector_id")
	public Sector getSector() {
		return sector;
	}

	public void setSector(Sector sector) {
		this.sector = sector;
	}
	
	@Column(name="category_name")
	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	
}
