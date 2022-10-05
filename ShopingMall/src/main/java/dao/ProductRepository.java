package dao;
import java.util.ArrayList;

import dto.Product;
public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<>();
	
	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7인치 디스플레이, 레티나 아몰레드 패널, 8백 메가 픽셀 카메라");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("P1235", "LG PC GRAM", 1500000);
		notebook.setDescription("13.3인치 디스플레이, IPS 패널, 5세대 인텔 코어 프로세스");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("11인치 디스플레이, 슈퍼 아몰레드 패널, 6개 cpu 탑재");
		tablet.setCategory("tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		
		
	}
	
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
}
