package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository { // ��ǰ�����

	private ArrayList<Product> listOfProducts = new ArrayList<>();

	private static ProductRepository instance = new ProductRepository();

	public static ProductRepository getInstance() {

		return instance;

	}

	public ProductRepository() {

		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch , 1334x750 Renina HD display, 8-me");
		phone.setCategory("Smart Phone");
		phone.setManufactirer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("NEW");
		phone.setFilename("P1234.png");

		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, ips, sdsdsadsa");
		notebook.setCategory("NOTEBOOK");
		notebook.setManufactirer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.png");

		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("11dsa ,dasdsadasd, cpu");
		tablet.setCategory("Tablet");
		tablet.setManufactirer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");

		
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);

	}

	public ArrayList<Product> getAllProducts() {

		return listOfProducts;
	}


	public Product getProductById(String productId) {

		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {

			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {

				productById = product;
				break;

			}

		}

		return productById;

	}
	
	public void addProduct(Product product) {
		
		listOfProducts.add(product);
		
	}
	

}
