package com.retailnet.products;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.retailnet.sector.Category;
import com.retailnet.sector.SectorDAO;

@RestController
@RequestMapping("/Image/rest")
public class ImageRestController {

	@Autowired
	ProductsDAO productsDAO;
	
	@RequestMapping(value="/fetchimagebyid", method=RequestMethod.POST)
	public String fetchImageById(@RequestParam(value="image_id") int imageId)
	{
		System.out.println("in fetch image");
		System.out.println(imageId);
		
		
		ProductImage productimages = productsDAO.fetchProductImageById(imageId);
		productimages.printObj();
		//JSONArray response = new JSONArray();
		JSONObject imageObj;
		
		
			imageObj = new JSONObject();
			//imageObj.put("image_id", productimages.product.getProductId();
			imageObj.put("image_name", productimages.getimageName());
			//response.add(imageObj);
		
		System.out.println("rest response : "+ imageObj.toJSONString());
		return imageObj.toJSONString();
	}
	
	@RequestMapping(value="/removeimage", method=RequestMethod.POST)
	public String RemoveImageById(@RequestParam(value="image_id") int imageId)
	{
		ProductImage productImage = productsDAO.fetchProductImageById(imageId);
		productsDAO.removeProductImage(imageId);
		int productId = productImage.getProduct().getProductId();
		
		
		return "redirect:/products/editproduct/?pid="+productId;
	}
	
}
