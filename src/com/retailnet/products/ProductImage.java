/**
 * 
 */
package com.retailnet.products;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * @author ASUS
 *
 */
@Entity
@Table(name="product_images")
public class ProductImage {
	int imageId;
	Products product;
	String imageName;
	
	public ProductImage() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProductImage(int imageId, Products product, String imageName) {
		super();
		this.imageId = imageId;
		this.product = product;
		this.imageName = imageName;
	}

	@Id
	@GeneratedValue
	@Column(name="image_id")
	public int getImageId() {
		return imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	@ManyToOne
	@JoinColumn(name="product_id")
	public Products getProduct() {
		return product;
	}

	public void setProduct(Products product) {
		this.product = product;
	}

	@Column(name="image_name")
	public String getimageName() {
		return imageName;
	}

	public void setimageName(String imageName) {
		this.imageName = imageName;
	}
	
	public void printObj() {
		System.out.println("image Name"+ this.imageName);
	}
	
}
