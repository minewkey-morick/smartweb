package webshop.dto;

import static org.junit.Assert.*;

import org.junit.Test;

public class ProductTest1 {
	
	Product pro=new Product("P1111", "µî´ë", 100000);

	@Test
	public void testProductStringStringInteger() {
		pro.toString();
	}

	@Test
	public void testGetProductId() {
		pro.getProductId();
	}

	@Test
	public void testSetProductId() {
		pro.setProductId("P2323");
	}

	@Test
	public void testGetPname() {
		pro.getPname();
	}

	@Test
	public void testSetPname() {
		pro.setPname("¼¼Å¹±â");
	}

	@Test
	public void testGetUnitPrice() {
		pro.getUnitPrice();
	}

	@Test
	public void testSetUnitPrice() {
		pro.setUnitPrice(1000000);
	}

}
