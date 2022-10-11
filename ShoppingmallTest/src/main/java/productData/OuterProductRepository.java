package productData;

import java.util.ArrayList;

public class OuterProductRepository {
	
	private ArrayList<OuterProduct> listOfProducts = new ArrayList<>();
	
	public OuterProductRepository() {
		OuterProduct outer1 = new OuterProduct("KKQWCPD500M", "KIRSH", 179000);
		outer1.setOuterProductDescription("체리 후드 롱 패딩입니다.");
		outer1.setOuterProductSize("1ONE SIZE");
		outer1.setOuterProductYear(2022);
		outer1.setOuterProductSex("mail");
		
		OuterProduct outer2 = new OuterProduct("1510582", "NATIONALGEOGRAPHIC", 149000);
		outer2.setOuterProductDescription("여성 헤론 U넥 경량 덕다운 점퍼");
		outer2.setOuterProductSize("85/90/95");
		outer2.setOuterProductYear(2022);
		outer2.setOuterProductSex("mail");
		
		OuterProduct outer3 = new OuterProduct("NJ4FN50J", "THE NORTH FACE", 159600);
		outer3.setOuterProductDescription("화이트 라벨의 시그니처가된 리모 폴리스 집 업 스타일입니다.");
		outer3.setOuterProductSize("85/90/95/100/105/110");
		outer3.setOuterProductYear(2022);
		outer3.setOuterProductSex("femail");
		
		
		listOfProducts.add(outer1);
		listOfProducts.add(outer2);
		listOfProducts.add(outer3);
	}
	public ArrayList<OuterProduct> getAllProducts(){
		return listOfProducts;
	}
}
