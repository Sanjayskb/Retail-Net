/**
 * 
 */
package com.retailnet.products;

import java.util.ArrayList;
import java.util.HashMap;

import com.retailnet.gst.Gst;
import com.retailnet.sector.Category;
import com.retailnet.user.User;


/**
 * @author ASUS
 *
 */
public interface ProductsDAO {
	
	public Products insertProduct(Products product);
	public boolean updateProduct(Products product);
	public Products fetchProductById(int productId);
	public ArrayList<Products> fetchAllProducts();
	public ArrayList<Products> fetchAllOtherProducts(int firmId);
	public ArrayList<Products> fetchAllOtherProductsdesc(int firmId);
	public ArrayList<Products> fetchMyProducts(int firmId);
	public boolean removeProduct(int productId);
	public boolean checkInInquiries(int sellerId,int productId);

	public ProductImage insertProductImage(ProductImage productImage);
	public ArrayList<ProductImage> fetchImageByProductId(int productId);
	public ProductImage fetchProductImageById(int imageId);
	public boolean removeProductImage(int imageId);
	public boolean removeAllProductImageByProductId(int productId);
	
	
	public ArrayList<Products> fetchProductsByCategoryId(int categoryId);
	public ArrayList<Products> fetchAllOtherProductsByCategoryId(int firmId,int categoryId);
	public HashMap<Integer, String> fetchOtherProductImagesByProductId(String productId);
	
	public ArrayList<Products> searchProductByKeywords(String keywords);
	public ArrayList<Products> sortProductsByPriceHtL();
	public ArrayList<Products> sortProductsByPriceLtH();
	public ArrayList<Products> sortProductsByPrice(int firmId);
	public ArrayList<Products> sortProductsByName(int firmId);
}
