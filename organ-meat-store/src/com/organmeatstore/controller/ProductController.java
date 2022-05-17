 package com.organmeatstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.organmeatstore.entity.Product;
import com.organmeatstore.service.ProductService;
import com.organmeatstore.util.SortUtils;

@Controller
@RequestMapping("/product")
public class ProductController {

	// need to inject our product service
	@Autowired
	private ProductService productService;
	

	@GetMapping("/list")
	public String listProducts(Model theModel, @RequestParam(required=false) String sort) {
		
		// get products from the service
				List<Product> theProducts = null;
				
				// check for sort field
				if (sort != null) {
					int theSortField = Integer.parseInt(sort);
					theProducts = productService.getProducts(theSortField);			
				}
				else {
					// no sort field provided ... default to sorting by SKU
					theProducts = productService.getProducts(SortUtils.SKU);
				}
				
				// add the products to the model
				theModel.addAttribute("products", theProducts);
				
				return "list-products2";
	}
	
	
	
	
	@GetMapping("/showFormForAddTest")
	public String showFormForAdd2(Model theModel) {
		
		//create model attribute to bind form data
		Product theProduct = new Product();
		
		theModel.addAttribute("product", theProduct);
		
		return "product-form3";
	}
	
	@PostMapping("/saveProduct")
	public String saveProduct(@ModelAttribute("product") Product theProduct) {
		
		//save the product using our service
		productService.saveProduct(theProduct);
		
		return "redirect:/product/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("productId") int theId, Model theModel) {
		
		// get the product from the service
		Product theProduct = productService.getProduct(theId);
		// set product as a model attribute to pre-populate the form
		theModel.addAttribute("product", theProduct);
		// send over to our form
		return "product-form";
		
	}
	
	@GetMapping("/delete")
	public String deleteProduct(@RequestParam("productId") int theId) {
		
		//delete the product
		productService.deleteProduct(theId);
		
		return "redirect:/product/list";
		
	}
	
    @GetMapping("/search")
    public String searchProducts(@RequestParam("theSearchName") String theSearchName,
                                    Model theModel) {
        // search products from the service
        List<Product> theProducts = productService.searchProducts(theSearchName);
                
        // add the products to the model
        theModel.addAttribute("products", theProducts);
        return "list-products2";        
    }
    
    @GetMapping("/login")
    public String showLogin(Model theModel) {
    	return "plain-login";
    }
    
    @GetMapping("/account")
    public String showAccount(Model theModel) {
    	return "account";
    }
    
    @GetMapping("/home")
    public String showHome(Model theModel) {
    	return "index";
    }
    
    @GetMapping("/about")
    public String showAboutUs(Model theModel) {
    	return "about";
    }
    
    @GetMapping("/productpage")
    public String showProductPage(Model theModel) {
    	return "productpage";
    }
    
    @GetMapping("/contact")
    public String showContact(Model theModel) {
    	return "contact";
    }
    
    @GetMapping("/cart")
    public String showCart(Model theModel) {
    	return "cart";
    }
    @GetMapping("/product-details")
    public String showProductDetails(Model theModel) {
    	return "product-details";
    }
	
	
}
