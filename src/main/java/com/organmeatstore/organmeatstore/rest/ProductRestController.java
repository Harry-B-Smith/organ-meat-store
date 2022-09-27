package com.organmeatstore.organmeatstore.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.organmeatstore.organmeatstore.entity.Product;
import com.organmeatstore.organmeatstore.service.ProductService;

@RestController
@RequestMapping("/api")
public class ProductRestController {
	
	private ProductService productService;
	
	// inject product dao (use constructor injection)
	@Autowired
	public ProductRestController(ProductService theProductService) {
		productService = theProductService;
	}
	
	// expose "/products" and return list of products
	@GetMapping("/products")
	public List<Product> findAll() {
		
		return productService.findAll();
	}
	
	// add mapping for GET /products/{productId}
	@GetMapping("/products/{productId}")
	public Product getProduct(@PathVariable int productId) {
		
		Product theProduct = productService.findById(productId);
		
		if (theProduct == null) {
			throw new RuntimeException("Product ID not found: " + productId);
		}
		
		return theProduct;
	}
	
	// add mapping for POST /products - add new product
	@PostMapping("/products")
	public Product addProduct(@RequestBody Product theProduct) {
		// set ID to 0 just in case an id is passed in JSON
		// forces save of new item instead of update
		
		theProduct.setId(0);
		
		productService.save(theProduct);
		
		return theProduct;
	}
	
	// add mapping for PUT /products - update existing product
	
	@PutMapping("/products")
	public Product updateProduct(@RequestBody Product theProduct) {
			
		productService.save(theProduct);
		
		return theProduct;
			
	}
	
	// add mapping for DELETE /products/{productId} delete product
	
	@DeleteMapping("/products/{productId}")
	public void deleteProduct(@PathVariable int productId) {
		
		Product tempProduct = productService.findById(productId);
		
		//throw exception if null
		
		if(tempProduct == null) {
			throw new RuntimeException("Product ID not found: " + productId);
		}
		
		productService.deleteById(productId);
	}

}
