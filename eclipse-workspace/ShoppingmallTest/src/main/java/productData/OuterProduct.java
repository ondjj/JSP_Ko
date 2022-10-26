package productData;

import java.io.Serializable;

public class OuterProduct implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String outerProductID; // 아우터 제품 상품 ID
	private String outerProductCompany; // 아우터 제품 제조회사
	private int outerProductCost; // 아우터 제품 가격
	private String outerProductDescription; // 아우터 제품 설명
	private String outerProductSize; // 아우터 제품 사이즈
	private int outerProductYear; // 아우터 제품 제조년도
	private String outerProductSex; // 아우터 제품 성별
	
	public OuterProduct() {
		super();
	}
	

	public OuterProduct(String outerProductID, String outerProductCompany, int outerProductCost) {
		super();
		this.outerProductID = outerProductID;
		this.outerProductCompany = outerProductCompany;
		this.outerProductCost = outerProductCost;
	}


	public String getOuterProductID() {
		return outerProductID;
	}
	public void setOuterProductID(String outerProductID) {
		this.outerProductID = outerProductID;
	}
	public String getOuterProductCompany() {
		return outerProductCompany;
	}
	public void setOuterProductCompany(String outerProductCompany) {
		this.outerProductCompany = outerProductCompany;
	}
	public int getOuterProductCost() {
		return outerProductCost;
	}
	public void setOuterProductCost(int outerProductCost) {
		this.outerProductCost = outerProductCost;
	}
	public String getOuterProductDescription() {
		return outerProductDescription;
	}
	public void setOuterProductDescription(String outerProductDescription) {
		this.outerProductDescription = outerProductDescription;
	}
	public String getOuterProductSize() {
		return outerProductSize;
	}
	public void setOuterProductSize(String outerProductSize) {
		this.outerProductSize = outerProductSize;
	}
	public int getOuterProductYear() {
		return outerProductYear;
	}
	public void setOuterProductYear(int outerProductYear) {
		this.outerProductYear = outerProductYear;
	}
	public String getOuterProductSex() {
		return outerProductSex;
	}
	public void setOuterProductSex(String outerProductSex) {
		this.outerProductSex = outerProductSex;
	}
	
	

	

}
