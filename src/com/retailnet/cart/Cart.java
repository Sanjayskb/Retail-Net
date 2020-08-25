package com.retailnet.cart;
import com.retailnet.products.Products;
import com.retailnet.user.User;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="master_cart")
public class Cart {
	
	int cartId;
	int quantity;
	Products product;
	User user;
	int status;
	
	
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Cart(int cartId, int quantity, Products product, User user,int status) {
		super();
		this.cartId = cartId;
		this.quantity = quantity;
		this.product = product;
		this.user = user;
		this.status = status;
		
	}
	
	@Id
	@GeneratedValue
	@Column(name="cart_id")
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	@Column(name="quantity")
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@ManyToOne
	@JoinColumn(name="product_id")
	public Products getProduct() {
		return product;
	}
	public void setProduct(Products product) {
		this.product = product;
	}
	@ManyToOne
	@JoinColumn(name="user_id")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	@Column(name="status")
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
	public void printObj() {
		System.out.println("Prinintng cart Object...");
		System.out.println("product Id : "+ this.product.getProductName());
		System.out.println("quantity : "+ this.quantity);
		System.out.println("cartId : "+ this.cartId);
		System.out.println("user id : "+ this.user.getUserId());
		
		
	}
	
	
}



