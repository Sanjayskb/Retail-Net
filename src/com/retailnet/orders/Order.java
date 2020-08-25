/**
 * 
 */
package com.retailnet.orders;
//.....................................................Unused ................................... Please Don't confuse it with inquiries.............................
import com.retailnet.products.Products;
import com.retailnet.user.Firm;
import com.retailnet.user.User;
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
@Table(name="orders")
public class Order {
	
	int orderId;
	int quantity; //cart
	int amount;
	String status;
	String orderPlaceDate;
	String orderDate;
	String deliveryDate;
	Firm sellerId;
	Firm buyerId; //cart
	Products productId; //cart
	/**
	 * 
	 */
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param orderId
	 * @param quantity
	 * @param amount
	 * @param status
	 * @param orderPlaceDate
	 * @param orderDate
	 * @param deliveryDate
	 * @param sellerId
	 * @param buyerId
	 * @param productId
	 */
	public Order(int orderId, int quantity, int amount, String status, String orderPlaceDate, String orderDate,
			String deliveryDate, Firm sellerId, Firm buyerId, Products productId) {
		super();
		this.orderId = orderId;
		this.quantity = quantity;
		this.amount = amount;
		this.status = status;
		this.orderPlaceDate = orderPlaceDate;
		this.orderDate = orderDate;
		this.deliveryDate = deliveryDate;
		this.sellerId = sellerId;
		this.buyerId = buyerId;
		this.productId = productId;
	}
	@Id
	@GeneratedValue
	@Column(name="order_id")
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	@Column(name="quantity")
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Column(name="amount")
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	@Column(name="status")
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Column(name="order_place_date")
	public String getOrderPlaceDate() {
		return orderPlaceDate;
	}
	public void setOrderPlaceDate(String orderPlaceDate) {
		this.orderPlaceDate = orderPlaceDate;
	}
	@Column(name="order_date")
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	@Column(name="delivery_date")
	public String getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	@ManyToOne
	@JoinColumn(name="seller_id")
	public Firm getSellerId() {
		return sellerId;
	}
	public void setSellerId(Firm sellerId) {
		this.sellerId = sellerId;
	}
	@ManyToOne
	@JoinColumn(name="buyer_id")
	public Firm getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(Firm buyerId) {
		this.buyerId = buyerId;
	}
	@ManyToOne
	@JoinColumn(name="product_id")
	public Products getProductId() {
		return productId;
	}
	public void setProductId(Products productId) {
		this.productId = productId;
	}
	
	
	
	
}
