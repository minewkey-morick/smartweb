package webshop.dao;

import java.util.ArrayList;

import webshop.dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts=new ArrayList<Product>();
	
	public ProductRepository() {
		Product phone=new Product("p1234", "iPhone", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnisInStock(1000);
		phone.setCondition("New");
		
		Product notebook=new Product("P12345", "LG PC Gram", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnisInStock(1000);
		notebook.setCondition("Refurbished");
		
		Product tablet=new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6mm, Super AMOLED display, OctaCore processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnisInStock(1000);
		tablet.setCategory("Old");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
}
