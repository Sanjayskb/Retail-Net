package com.retailnet.inquiries;

import com.retailnet.orders.Order;
import com.retailnet.products.Products;
import com.retailnet.user.Firm;
import com.retailnet.user.User;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="inquiries")
public class Inquiries {
	
	String inquiryId;
	Products products;
	int quantity;
	String productSpecifications;
	String moreDetails;
	String inquiryDate;
	int tableId;
	Firm sellerId;
	Firm buyerId;
	int status;
	
	public Inquiries() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Inquiries(String inquiryId, Products products, int quantity, String productSpecifications,
			String moreDetails, String inquiryDate,int tableId,Firm sellerId,
			Firm buyerId,int status) {
		super();
		this.inquiryId = inquiryId;
		this.products = products;
		this.quantity = quantity;
		this.productSpecifications = productSpecifications;
		this.moreDetails = moreDetails;
		this.inquiryDate = inquiryDate;
		this.tableId = tableId;
		this.sellerId = sellerId;
		this.buyerId = buyerId;
		this.status = status;
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

	
	@Column(name="inquiry_id")
	public String getInquiryId() {
		return inquiryId;
	}

	public void setInquiryId(String inquiryId) {
		this.inquiryId = inquiryId;
	}
	
	@ManyToOne
	@JoinColumn(name="product_id")
	public Products getProducts() {
		return products;
	}

	public void setProducts(Products products) {
		this.products = products;
	}
	
	@Column(name="quantity")
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	@Column(name="product_specifications")
	public String getProductSpecifications() {
		return productSpecifications;
	}

	public void setProductSpecifications(String productSpecifications) {
		this.productSpecifications = productSpecifications;
	}
	
	@Column(name="more_detail")
	public String getMoreDetails() {
		return moreDetails;
	}

	public void setMoreDetails(String moreDetails) {
		this.moreDetails = moreDetails;
	}
	
	@Column(name="inquiry_date")
	public String getInquiryDate() {
		return inquiryDate;
	}

	
	public void setInquiryDate(String inquiryDate) {
		this.inquiryDate = inquiryDate;
	}

	@ManyToOne
	@JoinColumn(name="seller_firm_id")
	public Firm getSellerId() {
		return sellerId;
	}

	public void setSellerId(Firm sellerId) {
		this.sellerId = sellerId;
	}

	@ManyToOne
	@JoinColumn(name="buyer_firm_id")
	public Firm getBuyerId() {
		return buyerId;
	}

	public void setBuyerId(Firm buyerId) {
		this.buyerId = buyerId;
	}

	@Column(name="status")
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
	
	
	
	
	
	
	

}
