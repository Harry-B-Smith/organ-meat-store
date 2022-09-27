package com.organmeatstore.organmeatstore.dao;

import java.util.List;

import com.organmeatstore.organmeatstore.entity.Product;

public interface ProductDAO {
	
	public List<Product> findAll();
	
	public Product findById(int theId);
	
	public void save(Product theProduct);
	
	public void deleteById(int theId);

}
