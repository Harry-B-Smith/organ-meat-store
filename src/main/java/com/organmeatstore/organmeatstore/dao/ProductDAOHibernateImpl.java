package com.organmeatstore.organmeatstore.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.organmeatstore.organmeatstore.entity.Product;


@Repository
public class ProductDAOHibernateImpl implements ProductDAO {

	// define field for entity manager	
	private EntityManager entityManager;
	
	// set up constructor injection
	@Autowired
	public ProductDAOHibernateImpl(EntityManager theEntityManager) {
		entityManager = theEntityManager;
	}
	
	
	@Override
	public List<Product> findAll() {
		
		// get the current hibernate session
		Session currentSession = entityManager.unwrap(Session.class);
		
//		// determine sort field
//		String theFieldName = null;
//		
//		switch (theSortField) {
//			case SortUtils.SKU: 
//				theFieldName = "sku";
//				break;
//			case SortUtils.NAME:
//				theFieldName = "name";
//				break;
//			case SortUtils.UNIT_PRICE:
//				theFieldName = "unit_price";
//				break;
//			default:
//				// if nothing matches the default to sort by SKU
//				theFieldName = "sku";
//		}
		
		// create a query	
		//String queryString = "from Product order by " + theFieldName;
//		Query<Product> theQuery = 
//				currentSession.createQuery(queryString, Product.class);
		Query<Product> theQuery = 
				currentSession.createQuery("from Product", Product.class);
		
		// execute query and get result list
		
		List<Product> products = theQuery.getResultList();
		
		// return the results
		return products;
	}


	@Override
	public Product findById(int theId) {
		// get the current hibernate session
		Session currentSession = entityManager.unwrap(Session.class);
		
		// get the product
		Product theProduct = currentSession.get(Product.class, theId);
		
		// return the product
		return theProduct;
	}


	@Override
	public void save(Product theProduct) {
		// get the current hibernate session
		Session currentSession = entityManager.unwrap(Session.class);
		
		// save product
		currentSession.saveOrUpdate(theProduct);
		
	}


	@Override
	public void deleteById(int theId) {
		
		// get current hibernate session
		Session currentSession = entityManager.unwrap(Session.class);
				
		//delete the product with primary key
				
		Query theQuery = currentSession.createQuery("delete from Product where id=:productId");
				theQuery.setParameter("productId", theId);
				
		theQuery.executeUpdate();
		
	}

}
