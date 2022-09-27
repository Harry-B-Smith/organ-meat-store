package com.organmeatstore.organmeatstore.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.organmeatstore.organmeatstore.entity.Product;


@Controller
@RequestMapping("/")
public class ViewController {
	
	//create mapping for "/hello"
	@GetMapping("/hello")
	public String sayHello(Model theModel) {
		
		return "hello";
	}
	
	//create mapping for "/index"
		@GetMapping("/index")
		public String getIndex(Model theModel) {
			
			return "index";
		}
		
		@GetMapping("/list")
		public String listProducts(Model theModel, @RequestParam(required=false) String sort) {
			
			// get products from the service
					List<Product> theProducts = null;
					
//					// check for sort field
//					if (sort != null) {
//						int theSortField = Integer.parseInt(sort);
//						theProducts = productService.findAll(theSortField);			
//					}
//					else {
//						// no sort field provided ... default to sorting by SKU
//						theProducts = productService.findAll(SortUtils.SKU);
//					}
					
					// add the products to the model
					theModel.addAttribute("products", theProducts);
					
					return "list-products";
		}

}
