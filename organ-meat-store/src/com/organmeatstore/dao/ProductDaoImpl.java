package com.organmeatstore.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.organmeatstore.entity.Product;
import com.organmeatstore.util.SortUtils;

@Repository
public class ProductDaoImpl implements ProductDAO {

	
	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Product> getProducts(int theSortField) {
		
		// get the current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
						
				// determine sort field
				String theFieldName = null;
				
				switch (theSortField) {
					case SortUtils.SKU: 
						theFieldName = "sku";
						break;
					case SortUtils.NAME:
						theFieldName = "name";
						break;
					case SortUtils.UNIT_PRICE:
						theFieldName = "unit_price";
						break;
					default:
						// if nothing matches the default to sort by SKU
						theFieldName = "sku";
				}
				
				// create a query  
				String queryString = "from Product order by " + theFieldName;
				Query<Product> theQuery = 
						currentSession.createQuery(queryString, Product.class);
				
				// execute query and get result list
				List<Product> products = theQuery.getResultList();
						
				// return the results		
				return products;
	}

	@Override
	public void saveProduct(Product theProduct) {
		
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		//save the product
		currentSession.saveOrUpdate(theProduct);
	
		
	}

	@Override
	public Product getProduct(int theId) {
		
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		//get the customer from database using primary key
		Product theProduct = currentSession.get(Product.class, theId);
		
		
		return theProduct;
	}

	@Override
	public void deleteProduct(int theId) {
		
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//delete the product with primary key
		
		Query theQuery = currentSession.createQuery("delete from Product where id=:productId");
		theQuery.setParameter("productId", theId);
		
		theQuery.executeUpdate();
	}

	@Override
	public List<Product> searchProducts(String theSearchName) {
		 // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();
        
        Query theQuery = null;
        
        //
        // only search by name if theSearchName is not empty
        //
        if (theSearchName != null && theSearchName.trim().length() > 0) {
            // search by name ... case insensitive
            theQuery =currentSession.createQuery("from Product where lower(name) like :theName or lower(sku) like :theName", Product.class);
            theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");
        }
        else {
            // theSearchName is empty ... so just get all products
            theQuery =currentSession.createQuery("from Product", Product.class);            
        }
        
        // execute query and get result list
        List<Product> products = theQuery.getResultList();
                
        // return the results        
        return products;
	}
	
	

}
