package com.organmeatstore.organmeatstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.organmeatstore.organmeatstore.dao.ProductDAO;
import com.organmeatstore.organmeatstore.entity.Product;

@Service
public class ProductServiceImpl implements ProductService {

	private ProductDAO productDAO;
	
	@Autowired
	public ProductServiceImpl (ProductDAO theProductDAO) {
		productDAO = theProductDAO;
	}
	
	@Override
	@Transactional
	public List<Product> findAll() {
		return productDAO.findAll();
	}

	@Override
	@Transactional
	public Product findById(int theId) {
		return productDAO.findById(theId);	
	}
	
	@Override
	@Transactional
	public void save(Product theProduct) {
		productDAO.save(theProduct);
	}

	@Override
	@Transactional
	public void deleteById(int theId) {
		productDAO.deleteById(theId);
	}

}
