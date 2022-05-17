package com.organmeatstore.service;

import java.util.List;

import com.organmeatstore.entity.Product;

public interface ProductService {

	public List<Product> getProducts(int theSortField);

	public void saveProduct(Product theProduct);

	public Product getProduct(int theId);

	public void deleteProduct(int theId);

	public List<Product> searchProducts(String theSearchName);
	
	
}
