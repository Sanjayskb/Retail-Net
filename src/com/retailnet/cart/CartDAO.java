package com.retailnet.cart;

import java.util.ArrayList;
import java.util.HashMap;

import com.retailnet.products.Products;

public interface CartDAO {
	
	public Cart insertCart(Cart cart);
	public Cart fetchCartById(int cartId);
	public ArrayList<Cart> fetchMyCart(int userId);
	public ArrayList<Cart> fetchMyCartByProductId(int productId);
	
    public boolean checkInCart(int userId,int productId);
    public boolean checkInCartByProductId(int productId);
	public boolean updateCart(Cart cart);
	public boolean removefromCart(int cartId);
	public boolean removefromCartByProductId(int productId);
	public HashMap<Integer, String> fetchCartProductImagesByProductId(String productId);
}
