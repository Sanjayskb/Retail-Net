/**
 * 
 */
package com.retailnet.products;


import com.retailnet.gst.Gst;
import com.retailnet.gst.Unit;
import com.retailnet.sector.Category;
import com.retailnet.user.Firm;
import com.retailnet.user.User;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

//import org.hibernate.annotations.Type;
/**
 * @author ASUS
 *
 */
@Entity
@Table(name="products")
public class Products {

	int productId;
	int quantity;
	int rate;
	int price;
	String productName;
	String dateOfManufacturing;
	Firm firm;
	Category category;
	String description;
	Gst gst;
	String brandName;
	Unit unit;
	String firstImageName;
	String specifications;
	int status;
	int availability;
	int sorting;
	/**
	 * 
	 */
	public Products() {
		super();
		// TODO Auto-generated constructor stub
	
	}
	public Products(int productId, int quantity,int rate, int price, String productName, String dateOfManufacturing, Firm firm,
			Category category, String description, Gst gst,String brandName, Unit unit,String firstImageName,String specifications,int status,int availability,int sorting) {
		super();
		this.productId = productId;
		this.quantity = quantity;
		this.rate = rate;
		this.price = price;
		this.productName = productName;
		this.dateOfManufacturing = dateOfManufacturing;
		this.firm = firm;
		this.category = category;
		this.description = description;
		this.gst = gst;
		this.brandName = brandName;
		this.unit = unit;
		this.firstImageName = firstImageName;
		this.specifications = specifications;
		this.status = status;
		this.availability = availability;
		this.sorting = sorting;
	}
	//@Transient
	//@Type(type = "json") 
	//@Column(name="product_specification",columnDefinition = "json")
	@Column(name="product_specification")
	 
	public String getSpecifications() {
		return specifications;
	}
	
	public void setSpecifications(String specifications) {
		this.specifications = specifications;
	}

	@Column(name="product_status")
	public int getStatus() {
		return status;
	}
	
	public void setStatus(int status) {
		this.status = status;
	}
	
	
	
	@Id
	@GeneratedValue
	@Column(name="product_id")
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	
	@Column(name="quantity")
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
	@Column(name="rate")
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	@Column(name="price")
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	@Column(name="product_name")
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	@Column(name="date_of_manufacturing")
	public String getDateOfManufacturing() {
		return dateOfManufacturing;
	}
	public void setDateOfManufacturing(String dateOfManufacturing) {
		this.dateOfManufacturing = dateOfManufacturing;
	}
	
	@ManyToOne
	@JoinColumn(name="firm_id")
	public Firm getFirm() {
		return firm;
	}
	public void setFirm(Firm firm) {
		this.firm = firm;
	}
	
	@ManyToOne
	@JoinColumn(name="category_id")
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	@Column(name="description")
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	@ManyToOne
	@JoinColumn(name="gst_id")
	public Gst getGst() {
		return gst;
	}
	public void setGst(Gst gst) {
		this.gst = gst;
	}
	
	@Column(name="brand_name")
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	
	
	@ManyToOne
	@JoinColumn(name="unit_id")
	public Unit getUnit() {
		return unit;
	}
	public void setUnit(Unit unit) {
		this.unit = unit;
	}
	
	
	@Column(name="product_availability")
	public int getAvailability() {
		return availability;
	}
	public void setAvailability(int availability) {
		this.availability = availability;
	}
	
	@Column(name="sorting")
	public int getSorting() {
		return sorting;
	}
	public void setSorting(int sorting) {
		this.sorting = sorting;
	}
	
	public void printObj() {
		System.out.println("Prinintng User Object...");
		System.out.println("product Id : "+ this.productId);
		System.out.println("quantity : "+ this.quantity);
		System.out.println("Rate : "+this.rate);
		System.out.println("Price : "+ this.price);
		System.out.println("Product Name : "+ this.productName);
		System.out.println("DOM : "+ this.dateOfManufacturing);
		System.out.println("Description : "+ this.description);
		System.out.println("Specifications : "+ this.specifications);
		System.out.println("Brand : " + this.category.getCategoryId());
		System.out.println("Gst Slab : " + this.gst.getGstId());
		System.out.println("Unit : " + this.unit.getUnitId());
		
		
	}
	
	
	@Transient
	public String getFirstImageName() {
		return firstImageName;
	}
	public void setFirstImageName(String firstImageName) {
		this.firstImageName = firstImageName;
	}
}

