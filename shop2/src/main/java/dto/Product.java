package dto;

import java.io.Serializable;

public class Product implements Serializable { // ��ǰŬ����

	private static final long serialVersionUID = 1L;

	private String productId; // ��ǰ���̵�
	private String pname; // ��ǰ��
	private Integer unitPrice; // ��ǰ����
	private String description; // ��ǰ ����
	private String manufactirer; // ������
	private String category; // �з�
	private long unitsInStock; // ��� ��
	private String condition; // �Ż�ǰ or �߰�ǰ or ���ǰ
	private String filename; // 그림 파일명
	private int quantity; // 장바구니 상품 개 수
	
	
	public Product() {
		super();
		
	}

	public Product(String productId, String pname, Integer unitPrice) {
		super();
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Integer  getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer  unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getManufactirer() {
		return manufactirer;
	}

	public void setManufactirer(String manufactirer) {
		this.manufactirer = manufactirer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long  getUnitsInStock() {
		return unitsInStock;
	}

	public void setUnitsInStock(long  unitsInStock) {
		this.unitsInStock = unitsInStock;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
