package com.starbucks.sw4.order;

import com.starbucks.sw4.menu.MenuDTO;

public class OrderDTO extends MenuDTO{

	/*
	 	    orderNum NUMBER CONSTRAINT ORDER_ON_PK PRIMARY KEY, 
			memberNum number constraint order_mn_fk references member(num), 
			storeCode NUMBER constraint order_sc_fk references store(storeCode), 
			cartNum NUMBER, 
			menuCode VARCHAR2(100) constraint order_mc_fk references menu(menuCode), 
			hotYN VARCHAR2(20), 
			optIndex VARCHAR2(50) constraint order_oi_fk references menuOption(optIndex), 
			menuCount NUMBER(30) DEFAULT 1, 
			opt1Count NUMBER DEFAULT 0, 
			opt2Count NUMBER DEFAULT 0, 
			foodOpt VARCHAR2(50), 
			menuPrice NUMBER, 
			addPrice NUMBER DEFAULT 0, 
			totalPrice NUMBER, 
			receivePhone VARCHAR2(200), 
			receiveEmail VARCHAR2(200), 
			orderDate VARCHAR2(100), 
		    adminYN varchar2(20)
	 */
	
	private long orderNum;
	private long memberNum;
	private long storeCode;
	private long cartNum;
	private String menuCode;
	private String hotYN;
	private String optIndex;
	private long menuCount;
	private long opt1Count;
	private long opt2Count;
	private String foodOpt;
	private long menuPrice;
	private long addPrice;
	private long totalPrice;
	private String receivePhone;
	private String receiveEmail;
	private String orderDate;
	private String adminYN;
	
<<<<<<< HEAD
	private long cardNum;
	private String id;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public long getCardNum() {
		return cardNum;
	}
	public void setCardNum(long cardNum) {
		this.cardNum = cardNum;
	}
=======
	private String totalPriceStr;
	private String menuPriceStr;
	private String opt1PriceStr;
	private String opt2PriceStr;
	private String addPriceStr;
	
	public String getAddPriceStr() {
		return String.format("%,d",this.addPrice);
	}

	public String getOpt1PriceStr() {
		return String.format("%,d",(this.getOpt1Count() - 1) * 500);
	}

	public String getOpt2PriceStr() {
		return String.format("%,d",(this.getOpt2Count() - 1) * 500);
	}

	public String getTotalPriceStr() {
		return String.format("%,d",this.totalPrice);
	}

	public String getMenuPriceStr() {
		return String.format("%,d",this.menuPrice);
	}

	
>>>>>>> main
	public long getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(long orderNum) {
		this.orderNum = orderNum;
	}
	public long getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(long memberNum) {
		this.memberNum = memberNum;
	}
	public long getStoreCode() {
		return storeCode;
	}
	public void setStoreCode(long storeCode) {
		this.storeCode = storeCode;
	}
	public long getCartNum() {
		return cartNum;
	}
	public void setCartNum(long cartNum) {
		this.cartNum = cartNum;
	}
	public String getMenuCode() {
		return menuCode;
	}
	public void setMenuCode(String menuCode) {
		this.menuCode = menuCode;
	}
	public String getHotYN() {
		return hotYN;
	}
	public void setHotYN(String hotYN) {
		this.hotYN = hotYN;
	}
	public String getOptIndex() {
		return optIndex;
	}
	public void setOptIndex(String optIndex) {
		this.optIndex = optIndex;
	}
	public long getMenuCount() {
		return menuCount;
	}
	public void setMenuCount(long menuCount) {
		this.menuCount = menuCount;
	}
	public long getOpt1Count() {
		return opt1Count;
	}
	public void setOpt1Count(long opt1Count) {
		this.opt1Count = opt1Count;
	}
	public long getOpt2Count() {
		return opt2Count;
	}
	public void setOpt2Count(long opt2Count) {
		this.opt2Count = opt2Count;
	}
	public String getFoodOpt() {
		return foodOpt;
	}
	public void setFoodOpt(String foodOpt) {
		this.foodOpt = foodOpt;
	}
	public long getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(long menuPrice) {
		this.menuPrice = menuPrice;
	}
	public long getAddPrice() {
		return addPrice;
	}
	public void setAddPrice(long addPrice) {
		this.addPrice = addPrice;
	}
	public long getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(long totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getReceivePhone() {
		return receivePhone;
	}
	public void setReceivePhone(String receivePhone) {
		this.receivePhone = receivePhone;
	}
	public String getReceiveEmail() {
		return receiveEmail;
	}
	public void setReceiveEmail(String receiveEmail) {
		this.receiveEmail = receiveEmail;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getAdminYN() {
		return adminYN;
	}
	public void setAdminYN(String adminYN) {
		this.adminYN = adminYN;
	}
	
}
